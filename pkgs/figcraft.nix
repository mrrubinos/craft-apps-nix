{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "figcraft";
  version = "0.8.0";
  hash = "sha256-Sekxnqg1Cg1gxzQhGaMZaJhe+vTD3QhOGmA+tiz0XLs=";
  cargoHash = "sha256-0nFdUgOtJu3AoHDnuYz3WJWKBEfdEbt77M5xBicVlwE=";
  description = "Design and prototype user interfaces";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "43913056ce82a3fdad0ef69f6b88d1dc922a8104";
    hash = "sha256-u1fC5spekizPXnrK6uiKEZSr2SJOaBF4ffLDbKkywEY=";
  };
}
