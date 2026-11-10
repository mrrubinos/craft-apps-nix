{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "designcraft";
  version = "0.19.0";
  hash = "sha256-J0WD/H3GMu6GhQt/rS6heXdN5UTqw23YJ5eX4PPlQ4I=";
  cargoHash = "sha256-bjHUt7UHwaI3tmq0QpWRObrG9nAk7WHDxzsC0d2Xwns=";
  description = "Lay out magazines, books and print documents";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "b076417b5880bd4154bd22f00695b1d28c6bea83";
    hash = "sha256-jZ3VBAJDofB6RvsS7GGV5lLT4xiShIjpz5XHBCD2oUc=";
  };
}
