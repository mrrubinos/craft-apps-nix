{
  mkCraftApp,
  fetchFromGitHub,
  alsa-lib,
}:

mkCraftApp {
  pname = "deckcraft";
  version = "0.5.0";
  hash = "sha256-B+kuyp/5j/yKqaQgood7VL4Vhf0gnOSTqT43VYa1LwE=";
  cargoHash = "sha256-5LjT/3EfDPguMPF4/TD6rpIefLk8+sIN0LD6Am3oDTQ=";
  description = "Create and present slide decks";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "43913056ce82a3fdad0ef69f6b88d1dc922a8104";
    hash = "sha256-u1fC5spekizPXnrK6uiKEZSr2SJOaBF4ffLDbKkywEY=";
  };

  buildInputs = [ alsa-lib ];
}
