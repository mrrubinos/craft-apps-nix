{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "wordcraft";
  version = "0.6.1";
  hash = "sha256-10djkguZ4kJBvZTH5Oni5D0XZrfe1gayy7WhsBlpd+0=";
  cargoHash = "sha256-L9NqKB/K/giJ4PmyevB389BHG2jEATHjWnGa15BVyUM=";
  description = "Write and design documents; open and save Word files";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "8dcdacd5153e64560d109541a47d806f26f048c0";
    hash = "sha256-4E9OrthE5z39xFXpvpwn4Fn6RH3wX2sF56rZZejZT+I=";
  };
}
