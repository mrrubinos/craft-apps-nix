{
  mkCraftApp,
  alsa-lib,
}:

mkCraftApp {
  pname = "soundcraft";
  version = "0.10.0";
  hash = "sha256-PXvcyaIVoDqPEVF33CNBONvXxonhB9nDVD7bnj9Yg/0=";
  cargoHash = "sha256-meaN5/HKmfaRd+KohJQ+vaAico35iEnGzLXk5+5wDe4=";
  description = "Record, edit and mix audio and MIDI";

  buildInputs = [ alsa-lib ];
}
