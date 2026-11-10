{
  mkCraftApp,
  fetchFromGitHub,
  alsa-lib,
}:

mkCraftApp {
  pname = "deckcraft";
  version = "0.17.0";
  hash = "sha256-C2rXOAQVTlHUWv/8VctowVyKKETZHc7S/vyAm3Ut20I=";
  cargoHash = "sha256-ik0r3TS3rSmGh/Cg6GeJCfqbN7uRw7voGnKDnWBh/M4=";
  description = "Create and present slide decks";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "37827adc41fd165f9a9234ac40f94dbad353aa69";
    hash = "sha256-BfFMLP2LLrKS246gGpj26ECVRa5/Ggzkesf0OBrfGu8=";
  };

  buildInputs = [ alsa-lib ];
}
