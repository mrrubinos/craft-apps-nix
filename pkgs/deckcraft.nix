{
  mkCraftApp,
  fetchFromGitHub,
  alsa-lib,
}:

mkCraftApp {
  pname = "deckcraft";
  version = "0.15.0";
  hash = "sha256-ffMDpDziPZ18qa7hHbgb67cvi5w6010o4Q3fHvanyYg=";
  cargoHash = "sha256-eD7hGaIfmdifVZc76K4GvTPV60hBc6LmFmz88kuysG8=";
  description = "Create and present slide decks";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "37827adc41fd165f9a9234ac40f94dbad353aa69";
    hash = "sha256-BfFMLP2LLrKS246gGpj26ECVRa5/Ggzkesf0OBrfGu8=";
  };

  buildInputs = [ alsa-lib ];
}
