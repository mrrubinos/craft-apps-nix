{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "lightcraft";
  version = "0.21.0";
  hash = "sha256-xnn5ODbe7alQZepLMCJ9oaKAwdJdOamytRpurQlvY0s=";
  cargoHash = "sha256-DBNghmD8BG+B3hVpO3B6mUcY9zSPfZadGIoHCw8k8Kw=";
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
