{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "vectorcraft";
  version = "0.17.0";
  hash = "sha256-5kfG3C6aKii2ov0j9N8K44LFiEY261saNSmJzvbyLhU=";
  cargoHash = "sha256-WtoC67BVtmNh0YFsDXVVrXV9qcdFYkSC2VBJ/zZlACo=";
  description = "Draw and edit vector illustrations, SVG and PDF";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "a71c20e30af613287c504f7e685ca8fad77752bc";
    hash = "sha256-KTyWjbpGmgZI2L+tL+vY1qI3Lr+j/9bO3i+s566rdlk=";
  };
}
