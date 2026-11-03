{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "vectorcraft";
  version = "0.21.0";
  hash = "sha256-jHdKEfQK+O4WnEkyRnXuQ22248H4YVbrpWfnYz1xSgs=";
  cargoHash = "sha256-YXuVyRwq8dIT/KlBv/8Bkv1p+zJtPZC01b4pYUIpD8s=";
  description = "Draw and edit vector illustrations, SVG and PDF";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "b076417b5880bd4154bd22f00695b1d28c6bea83";
    hash = "sha256-jZ3VBAJDofB6RvsS7GGV5lLT4xiShIjpz5XHBCD2oUc=";
  };
}
