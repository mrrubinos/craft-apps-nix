{
  mkCraftApp,
  fetchFromGitHub,
  alsa-lib,
}:

mkCraftApp {
  pname = "filmcraft";
  version = "0.20.1";
  hash = "sha256-efnUlfnS56t760z0hwQHGUtp4x7zzKnW6BJkyWwa1RQ=";
  cargoHash = "sha256-aQnPf3S3Mx/TsMNdbms2C2ACc4Zitggvw3PWcLEEZuI=";
  description = "Edit video, color and sound";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "b076417b5880bd4154bd22f00695b1d28c6bea83";
    hash = "sha256-jZ3VBAJDofB6RvsS7GGV5lLT4xiShIjpz5XHBCD2oUc=";
  };

  buildInputs = [ alsa-lib ];
}
