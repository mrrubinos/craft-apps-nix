{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "cadcraft";
  version = "0.17.1";
  hash = "sha256-qRzZk4M5hk+zTDq9IK9zy4aoK+hkeomVkS1BNfFqtW8=";
  cargoHash = "sha256-kilaA8T5ZFEn5+6Eh/8VGM4Z+WTt18u6B4zXepa7L3U=";
  description = "Draft, dimension and plot 2D drawings";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "b076417b5880bd4154bd22f00695b1d28c6bea83";
    hash = "sha256-jZ3VBAJDofB6RvsS7GGV5lLT4xiShIjpz5XHBCD2oUc=";
  };
}
