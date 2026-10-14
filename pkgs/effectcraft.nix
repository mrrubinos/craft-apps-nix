{
  mkCraftApp,
  alsa-lib,
}:

mkCraftApp {
  pname = "effectcraft";
  version = "0.9.2";
  hash = "sha256-Ra2oQ+ynFhcRS/X6xpiYXC60vNjOKvrDS3J2f8HipeE=";
  cargoHash = "sha256-1GFQnsEw7vEHrSXAJgyGqkanVhGWPBDyE5rpTWicTAQ=";
  description = "Motion graphics and visual effects compositor";

  buildInputs = [ alsa-lib ];
}
