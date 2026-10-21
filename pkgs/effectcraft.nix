{
  mkCraftApp,
  alsa-lib,
}:

mkCraftApp {
  pname = "effectcraft";
  version = "0.13.0";
  hash = "sha256-2T7TwROOP1uB8pbDCws07TRwKIjIJ455E6z4oL9xB4s=";
  cargoHash = "sha256-oMVEic27sZaqwcPrkuaLlzDOklnaBOW25RyeAFEpNKU=";
  description = "Motion graphics and visual effects compositor";

  buildInputs = [ alsa-lib ];
}
