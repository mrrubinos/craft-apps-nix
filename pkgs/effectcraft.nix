{
  mkCraftApp,
  alsa-lib,
}:

mkCraftApp {
  pname = "effectcraft";
  version = "0.21.0";
  hash = "sha256-bKKAYM4tKV3EateUKOg7PpbxfXB0xMKsXmvPQvDuK/Q=";
  cargoHash = "sha256-GA8Pun05kAy2vu/pjyJ/wfFZqAv6qFlicXY7/5f16VQ=";
  description = "Motion graphics and visual effects compositor";

  buildInputs = [ alsa-lib ];
}
