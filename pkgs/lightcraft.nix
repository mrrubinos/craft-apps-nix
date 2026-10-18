{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "lightcraft";
  version = "0.9.1";
  hash = "sha256-zjud9GW1oTGlL2IA4dNH5LKmYAqAU9EyPIvTryW19RM=";
  cargoHash = "sha256-aVfcTaecTHpsZHDmTw9Js+4MfY1QHgaDzq/Sd2+Ckg4=";
  description = "Organise photos and develop raw files, non-destructively";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "3d9ab3a132ed0eff457e424226a435a901da30d3";
    hash = "sha256-mNnDzBcOp1X10dzmiW0iBAkb74QjuzMO4slWudxXCTE=";
  };

  buildFeatures = [
    "lightcraft/heif"
    "lightcraft-cli/heif"
  ];
}
