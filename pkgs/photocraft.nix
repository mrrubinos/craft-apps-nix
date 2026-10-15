{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "photocraft";
  version = "0.9.0";
  hash = "sha256-muKVyGM/lG0Ffav5wk4SbinrPkoCzvBYmcpM/Vwp6bk=";
  cargoHash = "sha256-PQZGEtDvB6qb2arHuxGfz7Z+Pr1mCF/MrMI2yUGoV74=";
  description = "Edit photos and layered PSD documents";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "abb83316d96aa59c1cf64784289e378fe9fa5695";
    hash = "sha256-e+6HpOYoAFTh6mNfGBBw2njnBzcE8W8+Jybv1+dKOCA=";
  };

  buildFeatures = [ "heif" ];
}
