{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "figcraft";
  version = "0.7.0";
  hash = "sha256-0K9K3EEe/HKpufzW8ym9NUwsNpioUvPUxV9rxpoJU2Q=";
  cargoHash = "sha256-BdDJmIoTAH06y+bvfY8WyzxgV7572oxSdkA8kN4wz4E=";
  description = "Design and prototype user interfaces";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "43913056ce82a3fdad0ef69f6b88d1dc922a8104";
    hash = "sha256-u1fC5spekizPXnrK6uiKEZSr2SJOaBF4ffLDbKkywEY=";
  };
}
