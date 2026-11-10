{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "lightcraft";
  version = "0.20.0";
  hash = "sha256-3Yi52TE4/XyoBDmDI5SoHtwnSsG7g7nTj+bkgq2eoZY=";
  cargoHash = "sha256-wJDQAu5+nbqCsIqv1JLcUKvY8UwQbmPde4PUZpzkRtA=";
  description = "Organise photos and develop raw files, non-destructively";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "b076417b5880bd4154bd22f00695b1d28c6bea83";
    hash = "sha256-jZ3VBAJDofB6RvsS7GGV5lLT4xiShIjpz5XHBCD2oUc=";
  };

  buildFeatures = [
    "lightcraft/heif"
    "lightcraft-cli/heif"
  ];
}
