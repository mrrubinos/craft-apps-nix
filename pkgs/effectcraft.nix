{
  mkCraftApp,
  alsa-lib,
}:

mkCraftApp {
  pname = "effectcraft";
  version = "0.16.0";
  hash = "sha256-Qc6DJtbJND79MHsqQsHkPpL+xg622xk4kn4+nYXBpSM=";
  cargoHash = "sha256-BkZjYS5G+mx7F+0ODjEwMn9JBBLG8x58oMGgeBMrT8E=";
  description = "Motion graphics and visual effects compositor";

  buildInputs = [ alsa-lib ];
}
