{
  mkCraftApp,
  fetchFromGitHub,
  alsa-lib,
}:

mkCraftApp {
  pname = "filmcraft";
  version = "0.7.2";
  hash = "sha256-mjOCE4SwtooJ2hU1dUeu407Exh0BDmwAwqTcF+SMwEc=";
  cargoHash = "sha256-gOdzLsHKi6f11tScQJy4hBaS3YlTnwyPlSrR7dy4/PE=";
  description = "Edit video, color and sound";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "abb83316d96aa59c1cf64784289e378fe9fa5695";
    hash = "sha256-e+6HpOYoAFTh6mNfGBBw2njnBzcE8W8+Jybv1+dKOCA=";
  };

  buildInputs = [ alsa-lib ];
}
