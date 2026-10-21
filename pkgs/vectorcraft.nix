{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "vectorcraft";
  version = "0.14.0";
  hash = "sha256-q56jTGQtU3L15JqmR/II6zX+m3/eERva+82n3wipo7s=";
  cargoHash = "sha256-kOEnoQCn2BhSVFrA2N4yvYbfHkBRwmM4n3BDY++7isU=";
  description = "Draw and edit vector illustrations, SVG and PDF";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "a71c20e30af613287c504f7e685ca8fad77752bc";
    hash = "sha256-KTyWjbpGmgZI2L+tL+vY1qI3Lr+j/9bO3i+s566rdlk=";
  };
}
