{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "cadcraft";
  version = "0.20.1";
  hash = "sha256-VwytPvrzszX3a2Kvibu0luUhTXVNzhrEk049/0jnRP4=";
  cargoHash = "sha256-LgwdA0K8FhYvJFxXCNjm7y8m6A8qkayyMOgGFoxZS/E=";
  description = "Draft, dimension and plot 2D drawings";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "b076417b5880bd4154bd22f00695b1d28c6bea83";
    hash = "sha256-jZ3VBAJDofB6RvsS7GGV5lLT4xiShIjpz5XHBCD2oUc=";
  };
}
