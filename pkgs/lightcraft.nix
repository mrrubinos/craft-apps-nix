{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "lightcraft";
  version = "0.8.0";
  hash = "sha256-a84KDuTcYNsf5Te4U2PYOp2P1VwK0sGoJ0qIxaRjR80=";
  cargoHash = "sha256-i+y4+1xTg9F1fxO0gdFU/ZxTRWsB+NHfOJKdNNWGtqs=";
  description = "Organise photos and develop raw files, non-destructively";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "8dcdacd5153e64560d109541a47d806f26f048c0";
    hash = "sha256-4E9OrthE5z39xFXpvpwn4Fn6RH3wX2sF56rZZejZT+I=";
  };

  buildFeatures = [
    "lightcraft/heif"
    "lightcraft-cli/heif"
  ];
}
