{
  mkCraftApp,
  fetchFromGitHub,
  alsa-lib,
}:

mkCraftApp {
  pname = "deckcraft";
  version = "0.7.0";
  hash = "sha256-MEocLbrEyQ2X+YTxmbsqg69Eox/X7NIFySvuFDMbKV8=";
  cargoHash = "sha256-K02kLzGc/TxFAifSqqpgLWRyM/egWlasQxSjFSEk1Ms=";
  description = "Create and present slide decks";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "43913056ce82a3fdad0ef69f6b88d1dc922a8104";
    hash = "sha256-u1fC5spekizPXnrK6uiKEZSr2SJOaBF4ffLDbKkywEY=";
  };

  buildInputs = [ alsa-lib ];
}
