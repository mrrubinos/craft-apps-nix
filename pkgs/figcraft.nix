{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "figcraft";
  version = "0.9.0";
  hash = "sha256-awwhkLpjvbDgxzZ5NPJTHQbl1aHKdxTabydobJBi34M=";
  cargoHash = "sha256-j6GGKwNOX3jW8FjSAz1iHLMI5pYu5FPS39HXC5q3x00=";
  description = "Design and prototype user interfaces";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "43913056ce82a3fdad0ef69f6b88d1dc922a8104";
    hash = "sha256-u1fC5spekizPXnrK6uiKEZSr2SJOaBF4ffLDbKkywEY=";
  };
}
