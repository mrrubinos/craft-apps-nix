{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "cadcraft";
  version = "0.10.0";
  hash = "sha256-pvFqbmFKFN5mhq0NJgpVoQfmb5JD+KbjHWglWBnz2+I=";
  cargoHash = "sha256-4zJXVYX5M6h66JDUDWBmssukCKIphDlBbL/TDTmDhtM=";
  description = "Draft, dimension and plot 2D drawings";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "3d9ab3a132ed0eff457e424226a435a901da30d3";
    hash = "sha256-mNnDzBcOp1X10dzmiW0iBAkb74QjuzMO4slWudxXCTE=";
  };
}
