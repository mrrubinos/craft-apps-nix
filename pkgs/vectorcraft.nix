{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "vectorcraft";
  version = "0.24.0";
  hash = "sha256-FRby9AAQyG3N6irSeGaASE/2Yz6t3umA+Pjy+p2d0sc=";
  cargoHash = "sha256-4FBO4PrCChpdG/HuVaJmRV532cossFzfa3dWMFhmQqk=";
  description = "Draw and edit vector illustrations, SVG and PDF";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "b076417b5880bd4154bd22f00695b1d28c6bea83";
    hash = "sha256-jZ3VBAJDofB6RvsS7GGV5lLT4xiShIjpz5XHBCD2oUc=";
  };
}
