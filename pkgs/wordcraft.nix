{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "wordcraft";
  version = "0.11.0";
  hash = "sha256-KykZpvpFAbUkYLjEigX8813tx+IMCHIf7MisSpC8qjQ=";
  cargoHash = "sha256-UGAz/7P//xjWivV+Zhh8ahi5XJEPITdBOATmtW+cYQs=";
  description = "Write and design documents; open and save Word files";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "bfcbf714e45a3ea8e98f88ab2b7971372a576414";
    hash = "sha256-OWegmkrjwP6YP8NoV4i8V+GH2lKMS1XqDe24zFOc4yw=";
  };
}
