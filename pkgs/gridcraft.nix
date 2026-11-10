{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "gridcraft";
  version = "0.18.0";
  hash = "sha256-fSWqYnyhNceNaFpvjZs9B4wlvrvCm9JQSSNu397MHVE=";
  cargoHash = "sha256-FURL0xFpzRx8mgM/sQFSJ2Z7dCmVKvf1kDMID7BUszA=";
  description = "Calculate, analyse and chart data in workbooks";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "b076417b5880bd4154bd22f00695b1d28c6bea83";
    hash = "sha256-jZ3VBAJDofB6RvsS7GGV5lLT4xiShIjpz5XHBCD2oUc=";
  };
}
