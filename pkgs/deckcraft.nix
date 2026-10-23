{
  mkCraftApp,
  fetchFromGitHub,
  alsa-lib,
}:

mkCraftApp {
  pname = "deckcraft";
  version = "0.10.0";
  hash = "sha256-q18YQXHmkPaULSMPxu5vY9/F7JThejIhKwpHhme0UCI=";
  cargoHash = "sha256-iHkyrHz2VMx0+bpYnve5EtBiuH32VSYHRSvg+ihIdwU=";
  description = "Create and present slide decks";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "43913056ce82a3fdad0ef69f6b88d1dc922a8104";
    hash = "sha256-u1fC5spekizPXnrK6uiKEZSr2SJOaBF4ffLDbKkywEY=";
  };

  buildInputs = [ alsa-lib ];
}
