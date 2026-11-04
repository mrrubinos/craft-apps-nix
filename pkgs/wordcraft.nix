{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "wordcraft";
  version = "0.15.1";
  hash = "sha256-X3WqjvGaEnqE05TyQJDVFNexiCSUhJiZkepOKzlwbvo=";
  cargoHash = "sha256-fN1VrRRXBEZNgbkv4AJTupJXZFSFNMRuateiO7AAOgk=";
  description = "Write and design documents; open and save Word files";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "b076417b5880bd4154bd22f00695b1d28c6bea83";
    hash = "sha256-jZ3VBAJDofB6RvsS7GGV5lLT4xiShIjpz5XHBCD2oUc=";
  };
}
