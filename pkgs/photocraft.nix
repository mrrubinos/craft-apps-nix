{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "photocraft";
  version = "0.23.0";
  hash = "sha256-O42YlaRn6Y5TapJSnLaLdOYIn5fBWxo8GfL5Fbr2aes=";
  cargoHash = "sha256-bTzVnc0PrWHp8j3Hs1OeykMW6Gzp4H5uAIrP6jgB9pA=";
  description = "Edit photos and layered PSD documents";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "b076417b5880bd4154bd22f00695b1d28c6bea83";
    hash = "sha256-jZ3VBAJDofB6RvsS7GGV5lLT4xiShIjpz5XHBCD2oUc=";
  };

  buildFeatures = [ "heif" ];
}
