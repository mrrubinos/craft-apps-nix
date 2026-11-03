{
  mkCraftApp,
  fetchFromGitHub,
  alsa-lib,
}:

mkCraftApp {
  pname = "filmcraft";
  version = "0.17.0";
  hash = "sha256-8qy6HZu96wBUhpyN3w87hxnPgOZ06MmzHkzT1i5ru0k=";
  cargoHash = "sha256-+2eP9yDJ8fOdO/yvGMClZ6pn5rmc1rM57WofacvDR0s=";
  description = "Edit video, color and sound";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "b076417b5880bd4154bd22f00695b1d28c6bea83";
    hash = "sha256-jZ3VBAJDofB6RvsS7GGV5lLT4xiShIjpz5XHBCD2oUc=";
  };

  buildInputs = [ alsa-lib ];
}
