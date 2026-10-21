{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "gridcraft";
  version = "0.9.0";
  hash = "sha256-zXM/x2XVq42gFBpWvY4TcF4sewfUg7pFLKs5w0tM6zk=";
  cargoHash = "sha256-g12V4IqqybCsAM98a2N/VcwDM45MVeXznOqEopiHbGo=";
  description = "Calculate, analyse and chart data in workbooks";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "abb83316d96aa59c1cf64784289e378fe9fa5695";
    hash = "sha256-e+6HpOYoAFTh6mNfGBBw2njnBzcE8W8+Jybv1+dKOCA=";
  };
}
