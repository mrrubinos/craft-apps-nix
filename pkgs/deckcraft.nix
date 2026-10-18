{
  mkCraftApp,
  fetchFromGitHub,
  alsa-lib,
}:

mkCraftApp {
  pname = "deckcraft";
  version = "0.8.0";
  hash = "sha256-kO8YBFzyip+NJmH2eFGGOB7OCOZWUhIGvEuxBzSemgk=";
  cargoHash = "sha256-TlPzzZqjfKPE0D6FUSQKYkfdENzED+zNRYfQxepEBzk=";
  description = "Create and present slide decks";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "43913056ce82a3fdad0ef69f6b88d1dc922a8104";
    hash = "sha256-u1fC5spekizPXnrK6uiKEZSr2SJOaBF4ffLDbKkywEY=";
  };

  buildInputs = [ alsa-lib ];
}
