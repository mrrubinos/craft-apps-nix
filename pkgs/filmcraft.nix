{
  mkCraftApp,
  fetchFromGitHub,
  alsa-lib,
}:

mkCraftApp {
  pname = "filmcraft";
  version = "0.8.0";
  hash = "sha256-CxmUZ0felNb371LiQy1bNOfc2V/16DixvCkzyuFRhMM=";
  cargoHash = "sha256-xjyTr6HPvaO6tndE+1Icgs6HCx96I5a2zQfAYpqPE7U=";
  description = "Edit video, color and sound";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "abb83316d96aa59c1cf64784289e378fe9fa5695";
    hash = "sha256-e+6HpOYoAFTh6mNfGBBw2njnBzcE8W8+Jybv1+dKOCA=";
  };

  buildInputs = [ alsa-lib ];
}
