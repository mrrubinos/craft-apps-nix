{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "designcraft";
  version = "0.9.0";
  hash = "sha256-IL5kXdkFG1CiIuh3dWTphFu5EPHeSrg2eQ8N9dFNqkQ=";
  cargoHash = "sha256-pt/8PkH2c9IKFRgNIKkEUyUMca/glpEoo5CjgM3VVyU=";
  description = "Lay out magazines, books and print documents";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "abb83316d96aa59c1cf64784289e378fe9fa5695";
    hash = "sha256-e+6HpOYoAFTh6mNfGBBw2njnBzcE8W8+Jybv1+dKOCA=";
  };
}
