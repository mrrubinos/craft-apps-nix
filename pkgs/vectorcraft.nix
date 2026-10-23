{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "vectorcraft";
  version = "0.16.0";
  hash = "sha256-0NE4T55rwc1d6siV1RoeffAeh6uKoFY0YON23KYCQt4=";
  cargoHash = "sha256-Y3MJsI8tLwMPnae4COcgQ6+XS4GYcHF7cTPLnMmDO84=";
  description = "Draw and edit vector illustrations, SVG and PDF";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "a71c20e30af613287c504f7e685ca8fad77752bc";
    hash = "sha256-KTyWjbpGmgZI2L+tL+vY1qI3Lr+j/9bO3i+s566rdlk=";
  };
}
