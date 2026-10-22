{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "lightcraft";
  version = "0.11.0";
  hash = "sha256-4Ia+X9mv7A1vtKP+Wv0Ba8ubkDiXpcPYZuWpLrd3QkU=";
  cargoHash = "sha256-fOUCv0A3o1EMzDhC3yoOzV8gYXPqt8KafBwR6lY1nV0=";
  description = "Organise photos and develop raw files, non-destructively";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "a71c20e30af613287c504f7e685ca8fad77752bc";
    hash = "sha256-KTyWjbpGmgZI2L+tL+vY1qI3Lr+j/9bO3i+s566rdlk=";
  };

  buildFeatures = [
    "lightcraft/heif"
    "lightcraft-cli/heif"
  ];
}
