{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "photocraft";
  version = "0.20.1";
  hash = "sha256-wThSwug4qWWz7RkhZ8s1ZF9pKFZVKPhnhUw0w5Xurwk=";
  cargoHash = "sha256-FiQ4zYcjGK5yhgVjb7zH2gBbByPrcz/NuwtwjL1nPD0=";
  description = "Edit photos and layered PSD documents";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "b076417b5880bd4154bd22f00695b1d28c6bea83";
    hash = "sha256-jZ3VBAJDofB6RvsS7GGV5lLT4xiShIjpz5XHBCD2oUc=";
  };

  buildFeatures = [ "heif" ];
}
