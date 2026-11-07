{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "figcraft";
  version = "0.16.0";
  hash = "sha256-FFQtIH9UkI0Kw7OcxSIDdQJrx/gHe35GToeY0O0SMdk=";
  cargoHash = "sha256-0FLmpKGE2D20BU31a1abRQ6M/uW9yU/mzUNyn+WkMPM=";
  description = "Design and prototype user interfaces";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "37827adc41fd165f9a9234ac40f94dbad353aa69";
    hash = "sha256-BfFMLP2LLrKS246gGpj26ECVRa5/Ggzkesf0OBrfGu8=";
  };
}
