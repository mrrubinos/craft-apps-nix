{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "cadcraft";
  version = "0.6.2";
  hash = "sha256-kyNUKQvYg9SLE7E7LD/qBMAcxueEPdP9XRz9+H82I1M=";
  cargoHash = "sha256-ceBPm8kwhiqdpwgfFad/2lhiPVJeKrvbDLRAFYOofTI=";
  description = "Draft, dimension and plot 2D drawings";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "3d9ab3a132ed0eff457e424226a435a901da30d3";
    hash = "sha256-mNnDzBcOp1X10dzmiW0iBAkb74QjuzMO4slWudxXCTE=";
  };
}
