{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "designcraft";
  version = "0.12.0";
  hash = "sha256-gPG3Tb0vnmL3HO1iq5G8Rxg85UaVxf5iKJRCIuR3db8=";
  cargoHash = "sha256-WwLq9rKLTjvk5afjTYBdETIyEUoQjXUg/YGF7TAu8GA=";
  description = "Lay out magazines, books and print documents";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "abb83316d96aa59c1cf64784289e378fe9fa5695";
    hash = "sha256-e+6HpOYoAFTh6mNfGBBw2njnBzcE8W8+Jybv1+dKOCA=";
  };
}
