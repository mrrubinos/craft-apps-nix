{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "photocraft";
  version = "0.12.0";
  hash = "sha256-2MS7ge6Hp+KHmK7i3zZi/fgQfofO+tDPdDqOd2jFZUk=";
  cargoHash = "sha256-5eftgEI1vmfzST9LvXcurWyEOEjk2w6OAFjlx0p3ltg=";
  description = "Edit photos and layered PSD documents";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "abb83316d96aa59c1cf64784289e378fe9fa5695";
    hash = "sha256-e+6HpOYoAFTh6mNfGBBw2njnBzcE8W8+Jybv1+dKOCA=";
  };

  buildFeatures = [ "heif" ];
}
