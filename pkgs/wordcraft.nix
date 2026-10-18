{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "wordcraft";
  version = "0.8.0";
  hash = "sha256-5zT+XjveKuuqaSsJnKZjerai0TaBO6s7LhrWKrvNcSU=";
  cargoHash = "sha256-Dvjl82GeD/lxrRMCOQJm8pxbVctSeMiRhtmUWpDjziE=";
  description = "Write and design documents; open and save Word files";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "8dcdacd5153e64560d109541a47d806f26f048c0";
    hash = "sha256-4E9OrthE5z39xFXpvpwn4Fn6RH3wX2sF56rZZejZT+I=";
  };
}
