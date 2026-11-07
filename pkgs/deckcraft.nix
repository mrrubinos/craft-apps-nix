{
  mkCraftApp,
  fetchFromGitHub,
  alsa-lib,
}:

mkCraftApp {
  pname = "deckcraft";
  version = "0.16.0";
  hash = "sha256-/8GoID6kTOWYYjHmz2PUBmzHxWkCZRrOQiGogEePVII=";
  cargoHash = "sha256-uoKVa3SVGaWAoJ5o3VL+FI9d843OJyR2x0NnGx9azC0=";
  description = "Create and present slide decks";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "37827adc41fd165f9a9234ac40f94dbad353aa69";
    hash = "sha256-BfFMLP2LLrKS246gGpj26ECVRa5/Ggzkesf0OBrfGu8=";
  };

  buildInputs = [ alsa-lib ];
}
