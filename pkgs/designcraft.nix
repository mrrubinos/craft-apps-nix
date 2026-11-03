{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "designcraft";
  version = "0.17.0";
  hash = "sha256-7yyNVvZFO4F1SmDhpFytxM3BoPNA4uOLY0ldP5Ic2mE=";
  cargoHash = "sha256-Ur5EhZEE0VTQsXKgeWqqXMKF70cl4/jkPcFlsa28APE=";
  description = "Lay out magazines, books and print documents";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "b076417b5880bd4154bd22f00695b1d28c6bea83";
    hash = "sha256-jZ3VBAJDofB6RvsS7GGV5lLT4xiShIjpz5XHBCD2oUc=";
  };
}
