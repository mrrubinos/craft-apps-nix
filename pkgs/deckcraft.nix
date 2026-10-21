{
  mkCraftApp,
  fetchFromGitHub,
  alsa-lib,
}:

mkCraftApp {
  pname = "deckcraft";
  version = "0.9.0";
  hash = "sha256-ZXAZi6qikZ7jcSdvpGswvZNIm2a5Ek5V2hNI2YXfnrw=";
  cargoHash = "sha256-T3roS5vcmcnCXt8w3oKPXLZVkY9b2xEKjvt8ndYiK9Y=";
  description = "Create and present slide decks";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "43913056ce82a3fdad0ef69f6b88d1dc922a8104";
    hash = "sha256-u1fC5spekizPXnrK6uiKEZSr2SJOaBF4ffLDbKkywEY=";
  };

  buildInputs = [ alsa-lib ];
}
