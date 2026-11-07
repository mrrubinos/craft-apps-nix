{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "vectorcraft";
  version = "0.22.0";
  hash = "sha256-4Cb7wS6IxhGsQ8O4CdbjDJtYu8Z3NoHhUzxbRWziYYA=";
  cargoHash = "sha256-wXaN0TDkhMT6SgOH5HO1NSVsvB3vT1bghEomOF3BYkc=";
  description = "Draw and edit vector illustrations, SVG and PDF";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "b076417b5880bd4154bd22f00695b1d28c6bea83";
    hash = "sha256-jZ3VBAJDofB6RvsS7GGV5lLT4xiShIjpz5XHBCD2oUc=";
  };
}
