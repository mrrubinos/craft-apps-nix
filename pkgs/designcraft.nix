{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "designcraft";
  version = "0.20.1";
  hash = "sha256-rsQfF66CymQ46Ty+RG76A46d6mD8HcMHCOH9EE6sog4=";
  cargoHash = "sha256-BmlQ/G1pBW34W13sTz8jPi/kbzrtB5ZcTyrNOXgpidE=";
  description = "Lay out magazines, books and print documents";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "b076417b5880bd4154bd22f00695b1d28c6bea83";
    hash = "sha256-jZ3VBAJDofB6RvsS7GGV5lLT4xiShIjpz5XHBCD2oUc=";
  };
}
