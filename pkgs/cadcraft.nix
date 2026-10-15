{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "cadcraft";
  version = "0.7.0";
  hash = "sha256-/7mlDxYCeE6vKKJWghfMj4WtHbjPWfPnhb+HoHgA0q4=";
  cargoHash = "sha256-7/TxuM5jh6fncL0+pAT147GJuri/sD0xnN6lRxueD0E=";
  description = "Draft, dimension and plot 2D drawings";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "3d9ab3a132ed0eff457e424226a435a901da30d3";
    hash = "sha256-mNnDzBcOp1X10dzmiW0iBAkb74QjuzMO4slWudxXCTE=";
  };
}
