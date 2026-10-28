{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "lightcraft";
  version = "0.14.0";
  hash = "sha256-v6UZTeyxzDZ1bFoYGwvwv6tF11qQNXf4ib8siGjpcHU=";
  cargoHash = "sha256-dM3yj2Jux7zlk9ycTxY3++D/rKIkEqsyAkM304Ute3k=";
  description = "Organise photos and develop raw files, non-destructively";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "a71c20e30af613287c504f7e685ca8fad77752bc";
    hash = "sha256-KTyWjbpGmgZI2L+tL+vY1qI3Lr+j/9bO3i+s566rdlk=";
  };

  buildFeatures = [
    "lightcraft/heif"
    "lightcraft-cli/heif"
  ];
}
