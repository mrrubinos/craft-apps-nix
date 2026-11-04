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
  version = "0.18.1";
  hash = "sha256-WlLB9Mz/ZLNMePFuojQbaQ8o3W3Lt13bxdHUNSKGBtE=";
  cargoHash = "sha256-c3kX7b5m0kDeJOOqxKjI3D2Cq+pW1eT/p+YzYFa2N7g=";
  description = "PDF workbench: read, organize, combine, split and secure PDFs";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "b076417b5880bd4154bd22f00695b1d28c6bea83";
    hash = "sha256-jZ3VBAJDofB6RvsS7GGV5lLT4xiShIjpz5XHBCD2oUc=";
  };

  postInstall = lib.concatStrings (
    lib.mapAttrsToList (name: file: ''
      install -Dm644 ${file} $out/share/pdfcraft/models/${name}
    '') ocrModels
  );
}
