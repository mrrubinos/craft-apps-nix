{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "gridcraft";
  version = "0.16.0";
  hash = "sha256-UdKcStMixsQd0xCF75CpUxvTSl6VfuEcnnfFRG0WpWI=";
  cargoHash = "sha256-+er0diBIAUOSgTgxfiuRl8ZcQP2vtTQNdu1ehCrOI/E=";
  description = "Calculate, analyse and chart data in workbooks";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "b076417b5880bd4154bd22f00695b1d28c6bea83";
    hash = "sha256-jZ3VBAJDofB6RvsS7GGV5lLT4xiShIjpz5XHBCD2oUc=";
  };
}
