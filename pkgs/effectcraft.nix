{
  mkCraftApp,
  alsa-lib,
}:

mkCraftApp {
  pname = "effectcraft";
  version = "0.21.1";
  hash = "sha256-xI7yvrY6POSIhqsK2OuKwfy+EqY6N2APPPHXZuuFDIA=";
  cargoHash = "sha256-8Y9IuwXSWbd/8YmtcSq3m4n5ebueSFlOGKgZokXcQT8=";
  description = "Motion graphics and visual effects compositor";

  buildInputs = [ alsa-lib ];
}
