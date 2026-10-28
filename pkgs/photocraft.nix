{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "photocraft";
  version = "0.16.0";
  hash = "sha256-uaZmzQb4B1zZ2XrZHjHzI/uEVGdoYRFeh10GHIxzjDA=";
  cargoHash = "sha256-O1tUKAWSvLmOEUbpVub8bczHpoXH6XxXKSPGRVkjsHs=";
  description = "Edit photos and layered PSD documents";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "abb83316d96aa59c1cf64784289e378fe9fa5695";
    hash = "sha256-e+6HpOYoAFTh6mNfGBBw2njnBzcE8W8+Jybv1+dKOCA=";
  };

  buildFeatures = [ "heif" ];
}
