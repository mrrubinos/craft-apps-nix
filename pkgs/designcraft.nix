{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "designcraft";
  version = "0.10.0";
  hash = "sha256-wLPZ3hLR1phqRWwGj6FDuCis5F0QCKpTpusMOj+vKcA=";
  cargoHash = "sha256-5QLWzsYsXE+uN/GKb8ymzbz/r3rY+cy4sjJ9FLKypEQ=";
  description = "Lay out magazines, books and print documents";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "abb83316d96aa59c1cf64784289e378fe9fa5695";
    hash = "sha256-e+6HpOYoAFTh6mNfGBBw2njnBzcE8W8+Jybv1+dKOCA=";
  };
}
