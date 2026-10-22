{
  mkCraftApp,
  alsa-lib,
}:

mkCraftApp {
  pname = "soundcraft";
  version = "0.11.0";
  hash = "sha256-LkJ2m355lrYdfwsYBAezOcRmKvQSVTf8JG5yUDIGlY4=";
  cargoHash = "sha256-0pd5PV6XKZml52UuO1FC8rqXFx3ZW9qRE0Cf7grW6kU=";
  description = "Record, edit and mix audio and MIDI";

  buildInputs = [ alsa-lib ];
}
