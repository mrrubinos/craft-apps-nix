{
  mkCraftApp,
  alsa-lib,
}:

mkCraftApp {
  pname = "effectcraft";
  version = "0.11.1";
  hash = "sha256-Tck0XVne5B5mdnRzN50zrG/gCa5tE56TOyFi9ieSPEE=";
  cargoHash = "sha256-wyRErJzqvXFAl3RLQREUSkLCqWMUVDHszI8jAjBqfpI=";
  description = "Motion graphics and visual effects compositor";

  buildInputs = [ alsa-lib ];
}
