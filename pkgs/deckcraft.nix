{
  mkCraftApp,
  fetchFromGitHub,
  alsa-lib,
}:

mkCraftApp {
  pname = "deckcraft";
  version = "0.11.1";
  hash = "sha256-sxLcPfXXitvbQWWRV3pdsLEHYLde05qp7/QRinNz0xc=";
  cargoHash = "sha256-JPjjGZ7/A5EYdpwsjQksPFh9Q5usZGcqv5en1P3hbVs=";
  description = "Create and present slide decks";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "43913056ce82a3fdad0ef69f6b88d1dc922a8104";
    hash = "sha256-u1fC5spekizPXnrK6uiKEZSr2SJOaBF4ffLDbKkywEY=";
  };

  buildInputs = [ alsa-lib ];
}
