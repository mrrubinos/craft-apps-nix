{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "photocraft";
  version = "0.10.0";
  hash = "sha256-asFS+pfcFBD5sNm6AMOnCaPVVluXvN2TBW5jeFFPpEQ=";
  cargoHash = "sha256-MXFjgTw0G3phdPe19I1Wb+qU0jfszw/0vNw7hyTJQ7g=";
  description = "Edit photos and layered PSD documents";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "abb83316d96aa59c1cf64784289e378fe9fa5695";
    hash = "sha256-e+6HpOYoAFTh6mNfGBBw2njnBzcE8W8+Jybv1+dKOCA=";
  };

  buildFeatures = [ "heif" ];
}
