{
  mkCraftApp,
  alsa-lib,
}:

mkCraftApp {
  pname = "effectcraft";
  version = "0.10.0";
  hash = "sha256-3a5aeR9L6iS1nWdZQPlm+4RmrOIfrHzgzL+tABwctCc=";
  cargoHash = "sha256-Ag4H+W8IPcgTXi/GAYpeDV2qGBYr7sth2uD+QwckTek=";
  description = "Motion graphics and visual effects compositor";

  buildInputs = [ alsa-lib ];
}
