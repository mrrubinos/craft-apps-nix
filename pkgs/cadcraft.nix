{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "cadcraft";
  version = "0.18.0";
  hash = "sha256-QpH2p69+XL2EVF633X41LeiDZN/uJ22cHh1lP25use8=";
  cargoHash = "sha256-WVRERkYps/v1SQTYVBrHrk1rRzBGDBnMPUl6lUjBjOs=";
  description = "Draft, dimension and plot 2D drawings";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "b076417b5880bd4154bd22f00695b1d28c6bea83";
    hash = "sha256-jZ3VBAJDofB6RvsS7GGV5lLT4xiShIjpz5XHBCD2oUc=";
  };
}
