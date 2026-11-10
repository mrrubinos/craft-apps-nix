{
  mkCraftApp,
  alsa-lib,
}:

mkCraftApp {
  pname = "soundcraft";
  version = "0.19.0";
  hash = "sha256-alBwO6cTtBHjLZmcR+qu/7Mtx+cn5NHvN+kHhnT5nTM=";
  cargoHash = "sha256-kOa0ew31v5F6a/gyaHXWYjVKvMhJ87oD2TrXvysVZGY=";
  description = "Record, edit and mix audio and MIDI";

  buildInputs = [ alsa-lib ];
}
