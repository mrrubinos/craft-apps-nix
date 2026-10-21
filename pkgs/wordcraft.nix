{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "wordcraft";
  version = "0.9.0";
  hash = "sha256-ukGYTGTdrKUzr5IbSbnnWo7wlX7fkQj16RU4K+L7hWg=";
  cargoHash = "sha256-visMvngFM1zHJnLMUVGb5KZRv5LYu95YOWxDVqd80qQ=";
  description = "Write and design documents; open and save Word files";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "8dcdacd5153e64560d109541a47d806f26f048c0";
    hash = "sha256-4E9OrthE5z39xFXpvpwn4Fn6RH3wX2sF56rZZejZT+I=";
  };
}
