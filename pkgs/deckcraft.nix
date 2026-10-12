{
  mkCraftApp,
  fetchFromGitHub,
  alsa-lib,
}:

mkCraftApp {
  pname = "deckcraft";
  version = "0.6.1";
  hash = "sha256-c6uNNn58NsSeAoa87AU2bIMhCWmgPk/HoJ11IRhU4HU=";
  cargoHash = "sha256-z6QdxDIyLjr8Es08bpQEUxirK48PqBVIjjKPGHgZFXE=";
  description = "Create and present slide decks";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "43913056ce82a3fdad0ef69f6b88d1dc922a8104";
    hash = "sha256-u1fC5spekizPXnrK6uiKEZSr2SJOaBF4ffLDbKkywEY=";
  };

  buildInputs = [ alsa-lib ];
}
