{
  mkCraftApp,
  fetchFromGitHub,
  alsa-lib,
}:

mkCraftApp {
  pname = "filmcraft";
  version = "0.13.0";
  hash = "sha256-mEMNK+uizVpO0szEonWxkK3M6MpGV5s0Blzt9Y5VdAg=";
  cargoHash = "sha256-Ad4aHiGj7dbABxXUIQ9yHnW6q4xuOWnRvm3KC0lu230=";
  description = "Edit video, color and sound";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "bfcbf714e45a3ea8e98f88ab2b7971372a576414";
    hash = "sha256-OWegmkrjwP6YP8NoV4i8V+GH2lKMS1XqDe24zFOc4yw=";
  };

  buildInputs = [ alsa-lib ];
}
