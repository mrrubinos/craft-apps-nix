{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "gridcraft";
  version = "0.19.1";
  hash = "sha256-/dkhjj+BcL/+b/psYpRdO/vEG0zpiAt5fpIqkG7WLMw=";
  cargoHash = "sha256-vkNDu60fJy9GOqQSqZItees+XOmta1qB5x5ibm8nBuM=";
  description = "Calculate, analyse and chart data in workbooks";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "b076417b5880bd4154bd22f00695b1d28c6bea83";
    hash = "sha256-jZ3VBAJDofB6RvsS7GGV5lLT4xiShIjpz5XHBCD2oUc=";
  };
}
