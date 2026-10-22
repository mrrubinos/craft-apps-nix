{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "gridcraft";
  version = "0.10.0";
  hash = "sha256-1zcOZEv/5jfPp5r0DuZ/aZZHSZ2S+kd8HFbEGi48ChU=";
  cargoHash = "sha256-TlqxVwfnYtG/3uY/ke8x/dFIc9foSldklypX4ZwtM0M=";
  description = "Calculate, analyse and chart data in workbooks";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "abb83316d96aa59c1cf64784289e378fe9fa5695";
    hash = "sha256-e+6HpOYoAFTh6mNfGBBw2njnBzcE8W8+Jybv1+dKOCA=";
  };
}
