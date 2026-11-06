{
  mkCraftApp,
  fetchFromGitHub,
  alsa-lib,
}:

mkCraftApp {
  pname = "filmcraft";
  version = "0.17.1";
  hash = "sha256-wNndq73/p3cl3AZKPp4PUsUSyzSnyqywA5NgnhHVrfk=";
  cargoHash = "sha256-MTS7vSCFRwFRVfF3bOH8KH3GGJW5SOCxhTidu6cCbN0=";
  description = "Edit video, color and sound";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "b076417b5880bd4154bd22f00695b1d28c6bea83";
    hash = "sha256-jZ3VBAJDofB6RvsS7GGV5lLT4xiShIjpz5XHBCD2oUc=";
  };

  buildInputs = [ alsa-lib ];
}
