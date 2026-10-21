{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "lightcraft";
  version = "0.10.0";
  hash = "sha256-ouUtqTHCtQOvTOvkAyo+oAR+q9zi9AjLumiITwAAyCs=";
  cargoHash = "sha256-6vIp7dXgOFV6RJAcuV1s6Qvq6zc84Pt9PBTe9rdqWEc=";
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
