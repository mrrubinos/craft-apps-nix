{
  mkCraftApp,
  fetchFromGitHub,
  alsa-lib,
}:

mkCraftApp {
  pname = "filmcraft";
  version = "0.10.0";
  hash = "sha256-HlTLwdUbajGTWvCA6AbYHMDKfaI2pKDqOPh6jqnP6DE=";
  cargoHash = "sha256-X4ecaj7OieOoJXmqJ40/40PPk0Zfjhagmjf69pqotks=";
  description = "Edit video, color and sound";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "abb83316d96aa59c1cf64784289e378fe9fa5695";
    hash = "sha256-e+6HpOYoAFTh6mNfGBBw2njnBzcE8W8+Jybv1+dKOCA=";
  };

  buildInputs = [ alsa-lib ];
}
