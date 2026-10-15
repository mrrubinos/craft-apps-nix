{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "figcraft";
  version = "0.6.0";
  hash = "sha256-+tZk3xkpazqOn8oCwOLmFCIDtwfIxrpVgfZkq3xDvTM=";
  cargoHash = "sha256-wCI0BFw5JyMGKkPahNP2yRdrCrWpnX241YeYgRYnNyA=";
  description = "Design and prototype user interfaces";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "43913056ce82a3fdad0ef69f6b88d1dc922a8104";
    hash = "sha256-u1fC5spekizPXnrK6uiKEZSr2SJOaBF4ffLDbKkywEY=";
  };
}
