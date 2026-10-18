{
  mkCraftApp,
  alsa-lib,
}:

mkCraftApp {
  pname = "soundcraft";
  version = "0.8.0";
  hash = "sha256-SI58vpqyig1J1l81rqNRrIEhAgpE/mq/nSOjUxn8910=";
  cargoHash = "sha256-+XQMm8RB2MvuJRGddTZDVM3qRG7hHY7vM5xuxeqsG4o=";
  description = "Record, edit and mix audio and MIDI";

  buildInputs = [ alsa-lib ];
}
