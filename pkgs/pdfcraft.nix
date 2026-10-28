{
  lib,
  mkCraftApp,
  fetchFromGitHub,
  fetchurl,
}:

let
  # The ocrs-models S3 bucket returns 403, the v0.14.0 release tarball ships the same model files.
  modelsRelease = "pdfcraft-0.14.0-linux-x86_64";
  ocrModels =
    lib.mapAttrs
      (
        name: hash:
        fetchurl {
          inherit name hash;
          url = "https://github.com/storytold/pdfcraft/releases/download/v0.14.0/${modelsRelease}.tar.gz";
          downloadToTemp = true;
          postFetch = ''
            tar -xzOf "$downloadedFile" ${modelsRelease}/share/pdfcraft/models/${name} > "$out"
          '';
        }
      )
      {
        "text-detection.rten" = "sha256-8Vz7Vr0CxL9HiiA0OYZQSh8B4WZcKzoK1mNA8FSxtco=";
        "text-recognition.rten" = "sha256-5ISGbUzOQDF1vY0AsSj+sIq0LiCN4w5CzZiJ2PFzWm4=";
      };
in
mkCraftApp {
  pname = "pdfcraft";
  version = "0.14.0";
  hash = "sha256-UCTQr6j4TqPXQWH410cF6DZC0vK59QFv1FAWzxdDjwA=";
  cargoHash = "sha256-L0fC96fLlwTq0Gu0CSL9swKzZe4lcgLFsMsaIk3CxuY=";
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
