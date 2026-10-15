{
  lib,
  mkCraftApp,
  fetchFromGitHub,
  fetchurl,
}:

let
  ocrModels = {
    "text-detection.rten" = fetchurl {
      url = "https://ocrs-models.s3-accelerate.amazonaws.com/text-detection.rten";
      hash = "sha256-8Vz7Vr0CxL9HiiA0OYZQSh8B4WZcKzoK1mNA8FSxtco=";
    };
    "text-recognition.rten" = fetchurl {
      url = "https://ocrs-models.s3-accelerate.amazonaws.com/text-recognition.rten";
      hash = "sha256-5ISGbUzOQDF1vY0AsSj+sIq0LiCN4w5CzZiJ2PFzWm4=";
    };
  };
in
mkCraftApp {
  pname = "pdfcraft";
  version = "0.8.0";
  hash = "sha256-gPd3NSEaeBEP5m0zUHI92vrqPd0pQSItuF44ZHaTnco=";
  cargoHash = "sha256-0YWdiM3E046i2t8lCHLEVYKC9pQnBXCFYMtG3aDxTZ0=";
  description = "PDF workbench: read, organize, combine, split and secure PDFs";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "3d9ab3a132ed0eff457e424226a435a901da30d3";
    hash = "sha256-mNnDzBcOp1X10dzmiW0iBAkb74QjuzMO4slWudxXCTE=";
  };

  postInstall = lib.concatStrings (
    lib.mapAttrsToList (name: file: ''
      install -Dm644 ${file} $out/share/pdfcraft/models/${name}
    '') ocrModels
  );
}
