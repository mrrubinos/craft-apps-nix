{
  mkCraftApp,
  fetchFromGitHub,
  alsa-lib,
}:

mkCraftApp {
  pname = "filmcraft";
  version = "0.12.0";
  hash = "sha256-NY6PABV6Jsg6Rahl3uSM8+qW61yAcAEhWzCDH+wDUMo=";
  cargoHash = "sha256-FWCOqH4tMJJjLUJc0z+F++PObsbAvDIzgdGt8rMUZSc=";
  description = "Edit video, color and sound";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "abb83316d96aa59c1cf64784289e378fe9fa5695";
    hash = "sha256-e+6HpOYoAFTh6mNfGBBw2njnBzcE8W8+Jybv1+dKOCA=";
  };

  buildInputs = [ alsa-lib ];
}
