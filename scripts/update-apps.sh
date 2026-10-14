#!/usr/bin/env bash
# Compare the version of each app in pkgs/ with the latest stable vX.Y.Z tag upstream.
#
# Usage: scripts/update-apps.sh [--update] [app...]
#
# Without --update, report only. Exits 1 when at least one app is behind, 2 on an error.
# With --update, move each outdated app to the latest tag: the version, the source hash,
# the craft-fonts commit that the upstream release workflow pins, the craft-fonts hash,
# the cargoHash and the row in README.md. Exits 2 on an error.
set -euo pipefail

cd "$(dirname "$0")/.."

placeholder="sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA="

die() {
  echo "$*" >&2
  exit 2
}

latest_tag() {
  local tags
  tags=$(git ls-remote --tags --refs "https://github.com/storytold/$1.git") || return 1
  sed -n 's#.*refs/tags/v\([0-9]*\.[0-9]*\.[0-9]*\)$#\1#p' <<<"$tags" | sort -V | tail -n 1
}

field() {
  sed -n "s/^$2$3 = \"\(.*\)\";/\1/p" "$1"
}

upstream_fonts_rev() {
  local workflow revs
  workflow=$(curl -fsSL "https://raw.githubusercontent.com/storytold/$1/v$2/.github/workflows/release.yml") ||
    die "$1: cannot fetch .github/workflows/release.yml at v$2"
  revs=$(sed -nE '/^\s*-?\s*uses:/d; s/^\s*(craft-fonts-ref|CRAFT_FONTS_REF|ref):\s*([0-9a-f]{40}).*/\2/p' <<<"$workflow" | sort -u)
  [ "$(grep -c . <<<"$revs")" -le 1 ] || die "$1: release.yml at v$2 pins more than one commit: $revs"
  echo "$revs"
}

prefetch() {
  local json
  json=$(nix flake prefetch --json "github:$1") || die "cannot prefetch github:$1"
  jq -er .hash <<<"$json" || die "no hash for github:$1"
}

cargo_hash() {
  local out got
  if out=$(nix build --no-link ".#$1.cargoDeps" 2>&1); then
    die "$1: cargoDeps built with the placeholder hash"
  fi
  got=$(sed -n 's/^ *got: *\(sha256-.*\)$/\1/p' <<<"$out")
  [ -n "$got" ] || die "$1: cargoDeps failed without a hash mismatch:"$'\n'"$out"
  echo "$got"
}

set_field() {
  sed -i "s#^\($2$3 = \"\).*\(\";\)#\1$4\2#" "$1"
}

update_app() {
  local app=$1 file=$2 current=$3 latest=$4 pinned_rev fonts_rev src_hash fonts_hash new_cargo_hash backup
  pinned_rev=$(field "$file" "    " rev)
  fonts_rev=$(upstream_fonts_rev "$app" "$latest")
  if [ -z "$pinned_rev" ] && [ -n "$fonts_rev" ]; then
    die "$app: v$latest builds with craft-fonts $fonts_rev, add craftFonts to $file by hand"
  fi
  if [ -n "$pinned_rev" ] && [ -z "$fonts_rev" ]; then
    die "$app: v$latest builds without craft-fonts, remove craftFonts from $file by hand"
  fi

  src_hash=$(prefetch "storytold/$app/v$latest")
  backup=$(mktemp)
  cp "$file" "$backup"
  trap "$(printf 'cp %q %q; rm -f %q' "$backup" "$file" "$backup")" EXIT

  set_field "$file" "  " version "$latest"
  set_field "$file" "  " hash "$src_hash"
  set_field "$file" "  " cargoHash "$placeholder"
  if [ -n "$fonts_rev" ] && [ "$fonts_rev" != "$pinned_rev" ]; then
    fonts_hash=$(prefetch "storytold/craft-fonts/$fonts_rev")
    set_field "$file" "    " rev "$fonts_rev"
    set_field "$file" "    " hash "$fonts_hash"
  fi
  new_cargo_hash=$(cargo_hash "$app")
  set_field "$file" "  " cargoHash "$new_cargo_hash"

  trap - EXIT
  rm -f "$backup"
  sed -i "s/^| \`$app\` | $current |/| \`$app\` | $latest |/" README.md
  printf '%-12s %-8s updated to %s\n' "$app" "$current" "$latest"
}

update=0
if [ "${1:-}" = --update ]; then
  update=1
  shift
fi

if [ $# -gt 0 ]; then
  files=()
  for app in "$@"; do
    [ -f "pkgs/$app.nix" ] && [ "$app" != mk-craft-app ] || die "unknown app: $app"
    files+=("pkgs/$app.nix")
  done
else
  files=(pkgs/*.nix)
fi

status=0
for file in "${files[@]}"; do
  app=$(basename "$file" .nix)
  [ "$app" = mk-craft-app ] && continue

  current=$(field "$file" "  " version)
  if ! latest=$(latest_tag "$app"); then
    echo "$app: cannot list tags" >&2
    status=2
    continue
  fi

  if [ "$current" = "$latest" ]; then
    printf '%-12s %-8s up to date\n' "$app" "$current"
  elif [ "$update" -eq 1 ]; then
    update_app "$app" "$file" "$current" "$latest"
  else
    printf '%-12s %-8s -> %s\n' "$app" "$current" "$latest"
    [ "$status" -eq 0 ] && status=1
  fi
done

exit "$status"
