{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "gridcraft";
  version = "0.16.1";
  hash = "sha256-ypmyyONUIU+GRC53YcbKRmleht7OZY8odRzUVfWsTTA=";
  cargoHash = "sha256-88HgkCGpwrIOl3ARzXYw7dGc7hGfI4HjbRsfwPUcCyg=";
  description = "Calculate, analyse and chart data in workbooks";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "b076417b5880bd4154bd22f00695b1d28c6bea83";
    hash = "sha256-jZ3VBAJDofB6RvsS7GGV5lLT4xiShIjpz5XHBCD2oUc=";
  };
}
