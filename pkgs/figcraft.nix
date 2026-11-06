{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "figcraft";
  version = "0.15.1";
  hash = "sha256-nkDYjqEixE1zRJj/AiqVNIHQC5XnzqTf5hZREBX1UFc=";
  cargoHash = "sha256-JJiPU/L2My3aGpw00NlGwmSg4CHTpr4QiA0XvbdK0Ps=";
  description = "Design and prototype user interfaces";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "37827adc41fd165f9a9234ac40f94dbad353aa69";
    hash = "sha256-BfFMLP2LLrKS246gGpj26ECVRa5/Ggzkesf0OBrfGu8=";
  };
}
