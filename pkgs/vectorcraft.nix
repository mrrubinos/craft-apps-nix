{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "vectorcraft";
  version = "0.13.1";
  hash = "sha256-6fnvggL1zSNnO2w32zKpgtE2bv/4SWs//uAEDR+UFIo=";
  cargoHash = "sha256-3bE4+qcKPubcfJ3ZDTKzqh+xT325qNFR08rSxRhny6E=";
  description = "Draw and edit vector illustrations, SVG and PDF";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "3d9ab3a132ed0eff457e424226a435a901da30d3";
    hash = "sha256-mNnDzBcOp1X10dzmiW0iBAkb74QjuzMO4slWudxXCTE=";
  };
}
