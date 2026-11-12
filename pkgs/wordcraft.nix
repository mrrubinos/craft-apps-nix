{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "wordcraft";
  version = "0.18.1";
  hash = "sha256-n8BQIiX6C3D8pd8pil/reM/ffSW+cPEsI/OuQSUrYus=";
  cargoHash = "sha256-gsiSbjdpjKKtWfYr2xcyLiGWamy7qGGSKOraRvnaVAM=";
  description = "Write and design documents; open and save Word files";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "b076417b5880bd4154bd22f00695b1d28c6bea83";
    hash = "sha256-jZ3VBAJDofB6RvsS7GGV5lLT4xiShIjpz5XHBCD2oUc=";
  };
}
