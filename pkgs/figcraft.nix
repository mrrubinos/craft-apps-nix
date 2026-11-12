{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "figcraft";
  version = "0.18.1";
  hash = "sha256-L2mSlcFhvTcJMY2t+WIk+mIJfks6Kr9Sgvz0oHecsK8=";
  cargoHash = "sha256-GVTt+0fo+TfJMlnP5MbdayGN5GLgr0BipZV9LNiB3yI=";
  description = "Design and prototype user interfaces";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "37827adc41fd165f9a9234ac40f94dbad353aa69";
    hash = "sha256-BfFMLP2LLrKS246gGpj26ECVRa5/Ggzkesf0OBrfGu8=";
  };
}
