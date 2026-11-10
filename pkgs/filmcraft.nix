{
  mkCraftApp,
  fetchFromGitHub,
  alsa-lib,
}:

mkCraftApp {
  pname = "filmcraft";
  version = "0.19.0";
  hash = "sha256-w3wMdhmrcVUKt4gdxnYyZVz1rvAnehKxhWorRTwkIMY=";
  cargoHash = "sha256-tgc0xjxV5fSuH9FEMQ1Ndbql1xlZacEZa6WjkgDfBu4=";
  description = "Edit video, color and sound";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "b076417b5880bd4154bd22f00695b1d28c6bea83";
    hash = "sha256-jZ3VBAJDofB6RvsS7GGV5lLT4xiShIjpz5XHBCD2oUc=";
  };

  buildInputs = [ alsa-lib ];
}
