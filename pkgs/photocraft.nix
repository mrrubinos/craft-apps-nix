{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "photocraft";
  version = "0.11.1";
  hash = "sha256-//qOGI0/ZLXYPkJ+PL7U650ja/eWXqjjJ6fkcd6Ccdg=";
  cargoHash = "sha256-ofW17zeG7pTkiwdzjR1OaJ0mZ/qaId8yW0Kzsb9LTHg=";
  description = "Edit photos and layered PSD documents";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "abb83316d96aa59c1cf64784289e378fe9fa5695";
    hash = "sha256-e+6HpOYoAFTh6mNfGBBw2njnBzcE8W8+Jybv1+dKOCA=";
  };

  buildFeatures = [ "heif" ];
}
