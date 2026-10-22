{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "designcraft";
  version = "0.11.0";
  hash = "sha256-DiQmSuFIm7ye7h508d8b/YSS3XNZwl5WihitoORKVx0=";
  cargoHash = "sha256-wOq/THtTQNglpwuIgF8v69+TUrwwxPsLoL5OfTIfqaw=";
  description = "Lay out magazines, books and print documents";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "abb83316d96aa59c1cf64784289e378fe9fa5695";
    hash = "sha256-e+6HpOYoAFTh6mNfGBBw2njnBzcE8W8+Jybv1+dKOCA=";
  };
}
