{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "gridcraft";
  version = "0.6.1";
  hash = "sha256-w9OnCWA/uZ5tD6L6bRzRa9U7hpsZSeol9plWCoyYAEg=";
  cargoHash = "sha256-4sNBdm3bdYxbnAXfyLHy4sScrTwWkXfbWN9cAmUa/P8=";
  description = "Calculate, analyse and chart data in workbooks";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "abb83316d96aa59c1cf64784289e378fe9fa5695";
    hash = "sha256-e+6HpOYoAFTh6mNfGBBw2njnBzcE8W8+Jybv1+dKOCA=";
  };
}
