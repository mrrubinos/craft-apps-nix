{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "lightcraft";
  version = "0.19.0";
  hash = "sha256-UQaORLCbEZGgfPXZ/ZtI+KvFRFw+lHHgV/ey8mDqnQ8=";
  cargoHash = "sha256-QRYnnaffvzVa82QH6ucBfTWW9tyc8PBD2cQCaplw0MA=";
  description = "Organise photos and develop raw files, non-destructively";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "b076417b5880bd4154bd22f00695b1d28c6bea83";
    hash = "sha256-jZ3VBAJDofB6RvsS7GGV5lLT4xiShIjpz5XHBCD2oUc=";
  };

  buildFeatures = [
    "lightcraft/heif"
    "lightcraft-cli/heif"
  ];
}
