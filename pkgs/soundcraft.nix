{
  mkCraftApp,
  alsa-lib,
}:

mkCraftApp {
  pname = "soundcraft";
  version = "0.13.1";
  hash = "sha256-fwTq8t8BAmdTh9w3eEKPXv6UaHbr5mss+MouIWnDrhk=";
  cargoHash = "sha256-qxoDPVOcZvzMHLnDOIrmYWcmHTjwpvbFGuVADvcHYlk=";
  description = "Record, edit and mix audio and MIDI";

  buildInputs = [ alsa-lib ];
}
