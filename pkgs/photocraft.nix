{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "photocraft";
  version = "0.14.0";
  hash = "sha256-dkaJAJAcB433EDRiteDoxfvK17st37YP/tmlzQhi0UE=";
  cargoHash = "sha256-I0b+ZDqsi2fucOlIbu3UpVAFV4hvIJyUoWFx28SYiC8=";
  description = "Edit photos and layered PSD documents";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "abb83316d96aa59c1cf64784289e378fe9fa5695";
    hash = "sha256-e+6HpOYoAFTh6mNfGBBw2njnBzcE8W8+Jybv1+dKOCA=";
  };

  buildFeatures = [ "heif" ];
}
