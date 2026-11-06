{
  mkCraftApp,
  fetchFromGitHub,
  alsa-lib,
}:

mkCraftApp {
  pname = "deckcraft";
  version = "0.15.1";
  hash = "sha256-lWFYafZOIjz7uDe9imw4Pi+I2cLve34MyNdcIDD2YxU=";
  cargoHash = "sha256-ZxhaUonwFbOvGPcCVV7+MOUKzkdQ9iyxcwj4VdlDJjo=";
  description = "Create and present slide decks";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "37827adc41fd165f9a9234ac40f94dbad353aa69";
    hash = "sha256-BfFMLP2LLrKS246gGpj26ECVRa5/Ggzkesf0OBrfGu8=";
  };

  buildInputs = [ alsa-lib ];
}
