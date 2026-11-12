{
  mkCraftApp,
  alsa-lib,
}:

mkCraftApp {
  pname = "soundcraft";
  version = "0.20.1";
  hash = "sha256-Qew1WjgKWQ58OPZrhHVZRlKkj7u1EjwP9fgEOjKwfkw=";
  cargoHash = "sha256-rZzO2+VoVp/1nE/fHQ8hqsu7sFEVQX1AFMsPUOjRIK8=";
  description = "Record, edit and mix audio and MIDI";

  buildInputs = [ alsa-lib ];
}
