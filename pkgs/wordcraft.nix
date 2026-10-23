{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "wordcraft";
  version = "0.10.0";
  hash = "sha256-wvumEkKulRHPr2AxtYfZCyrN7OWiek4uNqDMY4k3FmM=";
  cargoHash = "sha256-xHXw/TYSlw1tERplmcS4WHRrhmVDIOvpQvJcUmJFCcg=";
  description = "Write and design documents; open and save Word files";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "8dcdacd5153e64560d109541a47d806f26f048c0";
    hash = "sha256-4E9OrthE5z39xFXpvpwn4Fn6RH3wX2sF56rZZejZT+I=";
  };
}
