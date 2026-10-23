{
  mkCraftApp,
  alsa-lib,
}:

mkCraftApp {
  pname = "soundcraft";
  version = "0.12.1";
  hash = "sha256-KiNJ/iVR8QHW6z6BBTS3n1TCGsFsWkY2N+OMyywjND0=";
  cargoHash = "sha256-JHI2cqHfGYMn9e8QmRDt16sKc5mdIbjo/ajSnGMGpLA=";
  description = "Record, edit and mix audio and MIDI";

  buildInputs = [ alsa-lib ];
}
