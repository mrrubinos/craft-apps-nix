{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "cadcraft";
  version = "0.17.0";
  hash = "sha256-Yf5bRRsvQbHdqBMScBb7qmsm18c8DSqvMx48Ab2Lli0=";
  cargoHash = "sha256-n7BLuz7ensk1ro4tNW1J6wqbyOPxvqeHgYftlAaDSHo=";
  description = "Draft, dimension and plot 2D drawings";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "b076417b5880bd4154bd22f00695b1d28c6bea83";
    hash = "sha256-jZ3VBAJDofB6RvsS7GGV5lLT4xiShIjpz5XHBCD2oUc=";
  };
}
