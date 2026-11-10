{
  mkCraftApp,
  alsa-lib,
}:

mkCraftApp {
  pname = "effectcraft";
  version = "0.23.1";
  hash = "sha256-kFizeWBOTDc0/2KYpxdCMS4fmhpED8se4hdF49Dr9KI=";
  cargoHash = "sha256-nDfuFsuA1Z8DTPFq2BBREwNWnLTAFJt/qcK8nmRsfUc=";
  description = "Motion graphics and visual effects compositor";

  buildInputs = [ alsa-lib ];
}
