{
  mkCraftApp,
  alsa-lib,
}:

mkCraftApp {
  pname = "effectcraft";
  version = "0.24.1";
  hash = "sha256-dtqPop1xmtd/duzJt02QCZj5zrtVtyvUI8hj4TbeSkc=";
  cargoHash = "sha256-TyxQTE247lH2Q1vUJQZudrYSHx7DS+DF5ZfbUUpB/XI=";
  description = "Motion graphics and visual effects compositor";

  buildInputs = [ alsa-lib ];
}
