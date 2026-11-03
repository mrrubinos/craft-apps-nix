{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "wordcraft";
  version = "0.15.0";
  hash = "sha256-AZJphQEBCkJiqAo2qus5R/LL6qTyiDODNU9yfVt8gUE=";
  cargoHash = "sha256-nc/Vr2dQoCPDN6ItYh0aseWNE8ABwSWWDeyOcJ0Gxig=";
  description = "Write and design documents; open and save Word files";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "b076417b5880bd4154bd22f00695b1d28c6bea83";
    hash = "sha256-jZ3VBAJDofB6RvsS7GGV5lLT4xiShIjpz5XHBCD2oUc=";
  };
}
