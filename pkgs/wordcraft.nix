{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "wordcraft";
  version = "0.17.0";
  hash = "sha256-ekPLNxXmdwweyWmrmgHWpXexECPCGQc7+/Gfi5LcnpU=";
  cargoHash = "sha256-M5yw2CjdaY2mAlCxIpzmceBnZtOJDwx9i0cIEXEZRTY=";
  description = "Write and design documents; open and save Word files";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "b076417b5880bd4154bd22f00695b1d28c6bea83";
    hash = "sha256-jZ3VBAJDofB6RvsS7GGV5lLT4xiShIjpz5XHBCD2oUc=";
  };
}
