{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "figcraft";
  version = "0.10.0";
  hash = "sha256-GTcEYs6BUqcA3AhXph1uZM78Z1N2FgljW1X5oaoim7I=";
  cargoHash = "sha256-/ovHS9Psoaonak7k3BGo2PPeH441Tec9WE047pzHoGA=";
  description = "Design and prototype user interfaces";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "43913056ce82a3fdad0ef69f6b88d1dc922a8104";
    hash = "sha256-u1fC5spekizPXnrK6uiKEZSr2SJOaBF4ffLDbKkywEY=";
  };
}
