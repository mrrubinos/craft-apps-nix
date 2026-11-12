{
  mkCraftApp,
  fetchFromGitHub,
  alsa-lib,
}:

mkCraftApp {
  pname = "deckcraft";
  version = "0.18.1";
  hash = "sha256-nNoZvhnGEFNmh780GtHoQ4jczs65laFRq7+bF4akXTg=";
  cargoHash = "sha256-IReMe4glJWfNEoLYLcL1GiahvjUSM60oEV576ATNII0=";
  description = "Create and present slide decks";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "37827adc41fd165f9a9234ac40f94dbad353aa69";
    hash = "sha256-BfFMLP2LLrKS246gGpj26ECVRa5/Ggzkesf0OBrfGu8=";
  };

  buildInputs = [ alsa-lib ];
}
