{
  mkCraftApp,
  alsa-lib,
}:

mkCraftApp {
  pname = "effectcraft";
  version = "0.14.0";
  hash = "sha256-5wursR7nr+n2UW1SLEFAZ8GudCSMdympFKJVb+7490o=";
  cargoHash = "sha256-13d/LTsXzHHHsGUby+vC4yTCRwJUr/8YXRCEzww5tRA=";
  description = "Motion graphics and visual effects compositor";

  buildInputs = [ alsa-lib ];
}
