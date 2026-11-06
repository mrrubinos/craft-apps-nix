{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "designcraft";
  version = "0.17.2";
  hash = "sha256-ZbYBubUsmO/+VNL1QLDPDFTVDKiiITUxZEWPbHX2xDA=";
  cargoHash = "sha256-DdAiIaokUSpCqGoRjLcNL2/BT+T7DvDe9e8Vj7m74/Y=";
  description = "Lay out magazines, books and print documents";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "b076417b5880bd4154bd22f00695b1d28c6bea83";
    hash = "sha256-jZ3VBAJDofB6RvsS7GGV5lLT4xiShIjpz5XHBCD2oUc=";
  };
}
