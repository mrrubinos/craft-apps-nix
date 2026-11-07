{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "designcraft";
  version = "0.18.0";
  hash = "sha256-2MCpd52/C8F3cFYqgZGEr6FpqV4leYJ+1Be9U0R9SeY=";
  cargoHash = "sha256-jLb9jIh3P8u1mcJG8jXJbnbfkGf3B4SctYEXgJqPU/Q=";
  description = "Lay out magazines, books and print documents";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "b076417b5880bd4154bd22f00695b1d28c6bea83";
    hash = "sha256-jZ3VBAJDofB6RvsS7GGV5lLT4xiShIjpz5XHBCD2oUc=";
  };
}
