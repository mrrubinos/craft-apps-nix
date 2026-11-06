{
  mkCraftApp,
  alsa-lib,
}:

mkCraftApp {
  pname = "soundcraft";
  version = "0.17.1";
  hash = "sha256-i8gkY6eZDhoia3KMJAiZrhW0Kfmta2TI4A3VdWV7vUY=";
  cargoHash = "sha256-fPf8auSs5fW4Nhclk97qzVSaYC22m/Xc1j0gF7p/p+0=";
  description = "Record, edit and mix audio and MIDI";

  buildInputs = [ alsa-lib ];
}
