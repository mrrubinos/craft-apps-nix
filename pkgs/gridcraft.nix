{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "gridcraft";
  version = "0.12.1";
  hash = "sha256-NVtXuSOBTe8wpa/l/DwH8nn7JFR7dgC3G9Wfl6jixcc=";
  cargoHash = "sha256-ErwPpeYf6SzvdEk2yOHVGZ0WuSQfRcCvGp1yffw+6PQ=";
  description = "Calculate, analyse and chart data in workbooks";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "abb83316d96aa59c1cf64784289e378fe9fa5695";
    hash = "sha256-e+6HpOYoAFTh6mNfGBBw2njnBzcE8W8+Jybv1+dKOCA=";
  };
}
