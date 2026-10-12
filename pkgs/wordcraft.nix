{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "wordcraft";
  version = "0.5.0";
  hash = "sha256-yJk5hzvvjwJXJkZFc/dO+Llf70w7xZnoX7zI3ifIuoY=";
  cargoHash = "sha256-OljEFWaPOT3nmWU/xVTcbn3ePAdEYkhG6/U4ysVG9Kc=";
  description = "Write and design documents; open and save Word files";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "8dcdacd5153e64560d109541a47d806f26f048c0";
    hash = "sha256-4E9OrthE5z39xFXpvpwn4Fn6RH3wX2sF56rZZejZT+I=";
  };
}
