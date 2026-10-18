{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "cadcraft";
  version = "0.8.0";
  hash = "sha256-kJQAgQ9ebzSW2V4/pK2HxRuLLQfvZJ16miJshbYo0TU=";
  cargoHash = "sha256-ql6+1TmAhoDumKI7YbTE0gVSoRa0yr0amaH0OIKF+os=";
  description = "Draft, dimension and plot 2D drawings";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "3d9ab3a132ed0eff457e424226a435a901da30d3";
    hash = "sha256-mNnDzBcOp1X10dzmiW0iBAkb74QjuzMO4slWudxXCTE=";
  };
}
