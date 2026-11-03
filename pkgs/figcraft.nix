{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "figcraft";
  version = "0.15.0";
  hash = "sha256-E3DdHHgJVdebbXqibZcrhytT0aDUUc+a+kpTUZocBK0=";
  cargoHash = "sha256-c33mZKKmttDf9jIhmm43bRguGnwQyXhhjg+tC1Ibk4o=";
  description = "Design and prototype user interfaces";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "37827adc41fd165f9a9234ac40f94dbad353aa69";
    hash = "sha256-BfFMLP2LLrKS246gGpj26ECVRa5/Ggzkesf0OBrfGu8=";
  };
}
