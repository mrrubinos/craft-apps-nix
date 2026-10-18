{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "gridcraft";
  version = "0.8.0";
  hash = "sha256-G0xsNWRoNMtA5lTKSZgLCHP6gcq+zOaOPdcColuFr0A=";
  cargoHash = "sha256-EY/41uMNm9hG7LhynI4d/7RSj5tGXsT8/s+Al8mr7pk=";
  description = "Calculate, analyse and chart data in workbooks";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "abb83316d96aa59c1cf64784289e378fe9fa5695";
    hash = "sha256-e+6HpOYoAFTh6mNfGBBw2njnBzcE8W8+Jybv1+dKOCA=";
  };
}
