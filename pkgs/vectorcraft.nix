{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "vectorcraft";
  version = "0.11.0";
  hash = "sha256-kATUMg2Bo8karh4swMByAg7E3BGg8lrpppEh3VT+oZ0=";
  cargoHash = "sha256-rehAo3VB8gqPjRuOGohbqJmMtZjh5xkK4UBBEJFRa/o=";
  description = "Draw and edit vector illustrations, SVG and PDF";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "3d9ab3a132ed0eff457e424226a435a901da30d3";
    hash = "sha256-mNnDzBcOp1X10dzmiW0iBAkb74QjuzMO4slWudxXCTE=";
  };
}
