{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "photocraft";
  version = "0.21.0";
  hash = "sha256-TjW9nhq234RDe1fbb7oElMZwKwmDY+0UBNZvqUjdgJI=";
  cargoHash = "sha256-u6hM6QTbRwbiuc24hGiQRv2Wsh70Wg07yZM1IQGVyUs=";
  description = "Edit photos and layered PSD documents";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "b076417b5880bd4154bd22f00695b1d28c6bea83";
    hash = "sha256-jZ3VBAJDofB6RvsS7GGV5lLT4xiShIjpz5XHBCD2oUc=";
  };

  buildFeatures = [ "heif" ];
}
