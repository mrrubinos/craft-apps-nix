{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "vectorcraft";
  version = "0.23.0";
  hash = "sha256-JDUneS7md/q2ZLKqSuKILuIHGUOXyDuuWoGgDQyW510=";
  cargoHash = "sha256-tDdES5pjOLASkVDeIxcM4voURybuDpFfwTvBPmrhCCo=";
  description = "Draw and edit vector illustrations, SVG and PDF";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "b076417b5880bd4154bd22f00695b1d28c6bea83";
    hash = "sha256-jZ3VBAJDofB6RvsS7GGV5lLT4xiShIjpz5XHBCD2oUc=";
  };
}
