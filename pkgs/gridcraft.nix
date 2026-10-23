{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "gridcraft";
  version = "0.11.1";
  hash = "sha256-ZhaRTAPX+bnifFTgU7Pv5wFaJHmffXI0a0vAyF4A0cs=";
  cargoHash = "sha256-eQMyzLQGDw444ZPpw01jbJkoWXWlWfGvWoQCd9mYr50=";
  description = "Calculate, analyse and chart data in workbooks";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "abb83316d96aa59c1cf64784289e378fe9fa5695";
    hash = "sha256-e+6HpOYoAFTh6mNfGBBw2njnBzcE8W8+Jybv1+dKOCA=";
  };
}
