{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "designcraft";
  version = "0.8.0";
  hash = "sha256-Ze5eAiIZkL1ccTFA6dNZ9TG6/SxuIb9c8/v0v0dwX2Y=";
  cargoHash = "sha256-IKiZRTrYovE8ofm4Dg/u8wRBkHHbxAMECUy5qzCBnjc=";
  description = "Lay out magazines, books and print documents";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "abb83316d96aa59c1cf64784289e378fe9fa5695";
    hash = "sha256-e+6HpOYoAFTh6mNfGBBw2njnBzcE8W8+Jybv1+dKOCA=";
  };
}
