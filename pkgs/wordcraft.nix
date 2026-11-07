{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "wordcraft";
  version = "0.16.0";
  hash = "sha256-7kZd99UuX2mwmYJkvVvvfaHAFpNkdPgHMPB0cBE5r+U=";
  cargoHash = "sha256-LsoTa1dUflP/Q2XKDUsEtk/kRdtgWyO87dXL2rPZEaI=";
  description = "Write and design documents; open and save Word files";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "b076417b5880bd4154bd22f00695b1d28c6bea83";
    hash = "sha256-jZ3VBAJDofB6RvsS7GGV5lLT4xiShIjpz5XHBCD2oUc=";
  };
}
