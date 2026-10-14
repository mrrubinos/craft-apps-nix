{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "vectorcraft";
  version = "0.10.0";
  hash = "sha256-Z663KKE+y80cuKrTeTVg8V4+HFd6sM4Bg3gq7fVL2/k=";
  cargoHash = "sha256-jWy29+wVqTzql0vELtwuMxc8j1LYetICPVivMqIKMkU=";
  description = "Draw and edit vector illustrations, SVG and PDF";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "3d9ab3a132ed0eff457e424226a435a901da30d3";
    hash = "sha256-mNnDzBcOp1X10dzmiW0iBAkb74QjuzMO4slWudxXCTE=";
  };
}
