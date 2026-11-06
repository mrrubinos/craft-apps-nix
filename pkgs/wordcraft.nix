{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "wordcraft";
  version = "0.15.2";
  hash = "sha256-e6L//Dhvziy4d6thhJ9tnjKwiiO+hB9lDq3DOX43Meo=";
  cargoHash = "sha256-HfzRe099PpXccZ9lGdNjAgr7WH/38t3H1d6Eq+4WXIU=";
  description = "Write and design documents; open and save Word files";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "b076417b5880bd4154bd22f00695b1d28c6bea83";
    hash = "sha256-jZ3VBAJDofB6RvsS7GGV5lLT4xiShIjpz5XHBCD2oUc=";
  };
}
