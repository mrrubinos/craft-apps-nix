{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "photocraft";
  version = "0.22.0";
  hash = "sha256-MiFfQFRWdlW1F3rdTtNaDkcLXJbRj7teGac5+/AAiSs=";
  cargoHash = "sha256-6fNECf/SmFNCK0qO7o61tsCsAo89ZVidZv0w1FcbPZI=";
  description = "Edit photos and layered PSD documents";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "b076417b5880bd4154bd22f00695b1d28c6bea83";
    hash = "sha256-jZ3VBAJDofB6RvsS7GGV5lLT4xiShIjpz5XHBCD2oUc=";
  };

  buildFeatures = [ "heif" ];
}
