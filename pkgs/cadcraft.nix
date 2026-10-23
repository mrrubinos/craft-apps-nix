{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "cadcraft";
  version = "0.12.0";
  hash = "sha256-JkpiJvU/Pk00q52lL1/LehJKIX5kHKMLQhhgxZdmRYs=";
  cargoHash = "sha256-lfoYEl44uFPdl5YYBOlsYUFlU00eDHnILcOGcrFc1BM=";
  description = "Draft, dimension and plot 2D drawings";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "3d9ab3a132ed0eff457e424226a435a901da30d3";
    hash = "sha256-mNnDzBcOp1X10dzmiW0iBAkb74QjuzMO4slWudxXCTE=";
  };
}
