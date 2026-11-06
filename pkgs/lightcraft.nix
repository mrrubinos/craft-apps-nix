{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "lightcraft";
  version = "0.18.1";
  hash = "sha256-9IKyMMEAE531WyPtH0Wn+yc3nDaiy3p9VPevF+19TJo=";
  cargoHash = "sha256-E6dCnVlX7qYu8ygK4HrAHIaDE7eOfgUUvfaTkf+9MFE=";
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
