{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "figcraft";
  version = "0.5.1";
  hash = "sha256-fA92f+eJ9KI5HklXzRsPF6XWTNCVYmbonHyY4HBm5L4=";
  cargoHash = "sha256-cIhEz2gHrWVsQLn9wnPY7GjcfsudOb+UZOqDT4XNm9w=";
  description = "Design and prototype user interfaces";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "43913056ce82a3fdad0ef69f6b88d1dc922a8104";
    hash = "sha256-u1fC5spekizPXnrK6uiKEZSr2SJOaBF4ffLDbKkywEY=";
  };
}
