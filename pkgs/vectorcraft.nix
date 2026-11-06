{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "vectorcraft";
  version = "0.21.1";
  hash = "sha256-Fy0RVnCzKBtZ0X2JhJVuYMiC85/S3SicHkcsnBVwKmg=";
  cargoHash = "sha256-0L+p+Q5wf1A9Slhz+stAb60+gA2h7OxfvNNQQgHvWh8=";
  description = "Draw and edit vector illustrations, SVG and PDF";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "b076417b5880bd4154bd22f00695b1d28c6bea83";
    hash = "sha256-jZ3VBAJDofB6RvsS7GGV5lLT4xiShIjpz5XHBCD2oUc=";
  };
}
