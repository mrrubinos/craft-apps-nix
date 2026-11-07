{
  mkCraftApp,
  fetchFromGitHub,
  alsa-lib,
}:

mkCraftApp {
  pname = "filmcraft";
  version = "0.18.0";
  hash = "sha256-9R/9UecNVthZimA1TXDWHRF8Z0w4Bvr4DctqV6RFxH8=";
  cargoHash = "sha256-mQqu82vQiXpI0643hF3ZQ9HbZ0qNlDeMN9Q9LG++8lk=";
  description = "Edit video, color and sound";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "b076417b5880bd4154bd22f00695b1d28c6bea83";
    hash = "sha256-jZ3VBAJDofB6RvsS7GGV5lLT4xiShIjpz5XHBCD2oUc=";
  };

  buildInputs = [ alsa-lib ];
}
