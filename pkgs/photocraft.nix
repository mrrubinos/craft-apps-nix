{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "photocraft";
  version = "0.8.2";
  hash = "sha256-kqKpZ8IBPmCd93XXvyxyAjPjJEWFfZh49qQc9KMSp4Y=";
  cargoHash = "sha256-dafKVsoBYuChW0nsjUhk5GqCChAO07A4Rhhv2UAdEx0=";
  description = "Edit photos and layered PSD documents";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "abb83316d96aa59c1cf64784289e378fe9fa5695";
    hash = "sha256-e+6HpOYoAFTh6mNfGBBw2njnBzcE8W8+Jybv1+dKOCA=";
  };

  buildFeatures = [ "heif" ];
}
