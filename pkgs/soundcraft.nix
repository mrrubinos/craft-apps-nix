{
  mkCraftApp,
  alsa-lib,
}:

mkCraftApp {
  pname = "soundcraft";
  version = "0.17.0";
  hash = "sha256-3EvdefFFh+nEx6ie8sNqOeRH+Jky49tj01P4Ge7W3Qo=";
  cargoHash = "sha256-qIeIfDTC7m88TZlMsGs83poDpjZw6y72SVjX+SwnE3E=";
  description = "Record, edit and mix audio and MIDI";

  buildInputs = [ alsa-lib ];
}
