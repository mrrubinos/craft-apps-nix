{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "lightcraft";
  version = "0.13.0";
  hash = "sha256-Na19eHTWkBZKjaRhU6V2RNnNExaxCuWrIIp4F9VwhUg=";
  cargoHash = "sha256-9gOmTjzqwwMdXFxBOgihSDtc0ywmZNvBzrVTRIaF2lQ=";
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
