{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "photocraft";
  version = "0.15.1";
  hash = "sha256-VEUY4Woazx5WZgCODYMWI+8CyF4w1rHp1vI9CY+bgdw=";
  cargoHash = "sha256-KXur3Ki4LGCmxXgHmUy7uLKT2X7LiMFdRnVJTolBAPk=";
  description = "Edit photos and layered PSD documents";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "abb83316d96aa59c1cf64784289e378fe9fa5695";
    hash = "sha256-e+6HpOYoAFTh6mNfGBBw2njnBzcE8W8+Jybv1+dKOCA=";
  };

  buildFeatures = [ "heif" ];
}
