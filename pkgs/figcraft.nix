{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "figcraft";
  version = "0.11.2";
  hash = "sha256-m/esZA+zHBEEsJxtorMF00NhlCkrFj7p6sFWOJt4JAY=";
  cargoHash = "sha256-EB/qkhEhZil1YxItkg+OAWl9KxXAD7W5y1+dxRKuUG4=";
  description = "Design and prototype user interfaces";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "43913056ce82a3fdad0ef69f6b88d1dc922a8104";
    hash = "sha256-u1fC5spekizPXnrK6uiKEZSr2SJOaBF4ffLDbKkywEY=";
  };
}
