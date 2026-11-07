{
  mkCraftApp,
  alsa-lib,
}:

mkCraftApp {
  pname = "soundcraft";
  version = "0.18.0";
  hash = "sha256-KxTP6R6jrGVX9SkMEepccThk3FKIhn+V7e01kXLIIZQ=";
  cargoHash = "sha256-ExKqLiUi8EeqJyvftaNwpdx/oYuQ/nnVqefXBC9jVCM=";
  description = "Record, edit and mix audio and MIDI";

  buildInputs = [ alsa-lib ];
}
