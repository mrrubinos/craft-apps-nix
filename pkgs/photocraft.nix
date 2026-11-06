{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "photocraft";
  version = "0.20.2";
  hash = "sha256-GIaCBK5zDpnOwNbefv+igBbQSVhC1KfRTP9OJj2zPYI=";
  cargoHash = "sha256-FYHbqEMhmLkQ/h1CAK9pZe/Rkn+jTNB0waiD+bu8uX0=";
  description = "Edit photos and layered PSD documents";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "b076417b5880bd4154bd22f00695b1d28c6bea83";
    hash = "sha256-jZ3VBAJDofB6RvsS7GGV5lLT4xiShIjpz5XHBCD2oUc=";
  };

  buildFeatures = [ "heif" ];
}
