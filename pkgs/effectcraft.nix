{
  mkCraftApp,
  alsa-lib,
}:

mkCraftApp {
  pname = "effectcraft";
  version = "0.22.0";
  hash = "sha256-G2WD/9lADzCqHRVfqvF+k2cv+Q6WRGpLZsQSGLiTX/k=";
  cargoHash = "sha256-y2dt8DhUWQ+l2k8P3V7VZqdCbzY7C5jja5RVBq6oz54=";
  description = "Motion graphics and visual effects compositor";

  buildInputs = [ alsa-lib ];
}
