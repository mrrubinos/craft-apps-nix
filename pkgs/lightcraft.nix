{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "lightcraft";
  version = "0.18.0";
  hash = "sha256-2pmVy85ms/KrjqwlZRpLxtBeQzbjrrrHJUJ/jW3WIgA=";
  cargoHash = "sha256-BhBn2Bc2/g2jzmMiiaECReRw/KTuRIzoeLVraQVR3v0=";
  description = "Organise photos and develop raw files, non-destructively";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "b076417b5880bd4154bd22f00695b1d28c6bea83";
    hash = "sha256-jZ3VBAJDofB6RvsS7GGV5lLT4xiShIjpz5XHBCD2oUc=";
  };

  buildFeatures = [
    "lightcraft/heif"
    "lightcraft-cli/heif"
  ];
}
