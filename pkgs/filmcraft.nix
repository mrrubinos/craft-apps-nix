{
  mkCraftApp,
  fetchFromGitHub,
  alsa-lib,
}:

mkCraftApp {
  pname = "filmcraft";
  version = "0.9.0";
  hash = "sha256-GQHgXZwEQcBfCZMxZMfPmoKXZvS9PwX99/Mq7aq34n8=";
  cargoHash = "sha256-ilrMSVA0T1gQJRgCe+m8Vr2QTJMBZFas/gaYJ1+pttg=";
  description = "Edit video, color and sound";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "abb83316d96aa59c1cf64784289e378fe9fa5695";
    hash = "sha256-e+6HpOYoAFTh6mNfGBBw2njnBzcE8W8+Jybv1+dKOCA=";
  };

  buildInputs = [ alsa-lib ];
}
