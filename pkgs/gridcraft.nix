{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "gridcraft";
  version = "0.17.0";
  hash = "sha256-95YijEgD9A5DJpBTuPWpM8q3PasnLFChJOSICmtpRC4=";
  cargoHash = "sha256-Mb3HBd3fquTqMYkJ6m+j/+V7Yx5zg2a2LU3b98QEab4=";
  description = "Calculate, analyse and chart data in workbooks";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "b076417b5880bd4154bd22f00695b1d28c6bea83";
    hash = "sha256-jZ3VBAJDofB6RvsS7GGV5lLT4xiShIjpz5XHBCD2oUc=";
  };
}
