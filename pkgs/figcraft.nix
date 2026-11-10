{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "figcraft";
  version = "0.17.0";
  hash = "sha256-XVQRR+/xw9QLDHq4DaciKhcLuCGnFj5k6J4jMs1NPQg=";
  cargoHash = "sha256-KbbpQNNtbKZXFL1POXAbk674vIsXMcYI3z9/baWPB7o=";
  description = "Design and prototype user interfaces";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "37827adc41fd165f9a9234ac40f94dbad353aa69";
    hash = "sha256-BfFMLP2LLrKS246gGpj26ECVRa5/Ggzkesf0OBrfGu8=";
  };
}
