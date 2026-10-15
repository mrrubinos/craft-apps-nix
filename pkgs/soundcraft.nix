{
  mkCraftApp,
  alsa-lib,
}:

mkCraftApp {
  pname = "soundcraft";
  version = "0.7.0";
  hash = "sha256-5jtnIqtpPF68JQfIGIjXHrW//4Xwkzs7OOXGKZ6hfxg=";
  cargoHash = "sha256-E6TBJJMjLX2D5DvzSdy5HPxhSq2IG+rz2VtD2wkN+dQ=";
  description = "Record, edit and mix audio and MIDI";

  buildInputs = [ alsa-lib ];
}
