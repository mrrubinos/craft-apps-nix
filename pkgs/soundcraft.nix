{
  mkCraftApp,
  alsa-lib,
}:

mkCraftApp {
  pname = "soundcraft";
  version = "0.6.1";
  hash = "sha256-VC9DzuzajyGr82cEKPpgc0rezU9lJdaGNKd+foazRU8=";
  cargoHash = "sha256-qaY9GeH26onJoYfJC1bCBu3q3Xmc5JV2SsK8xSqbLzE=";
  description = "Record, edit and mix audio and MIDI";

  buildInputs = [ alsa-lib ];
}
