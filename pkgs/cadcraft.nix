{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "cadcraft";
  version = "0.13.0";
  hash = "sha256-lS9E30whUfGNq82jpgmJB5q3W81zZQNmqg0TcM1ul1M=";
  cargoHash = "sha256-BE34VV7+IwbpLvEMO61ombOGdcytlq2B7BJPWGjpdvA=";
  description = "Draft, dimension and plot 2D drawings";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "3d9ab3a132ed0eff457e424226a435a901da30d3";
    hash = "sha256-mNnDzBcOp1X10dzmiW0iBAkb74QjuzMO4slWudxXCTE=";
  };
}
