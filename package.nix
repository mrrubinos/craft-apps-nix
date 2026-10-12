{
  lib,
  rustPlatform,
  fetchFromGitHub,
  fetchurl,
  pkg-config,
  wayland,
  libxkbcommon,
  vulkan-loader,
  libGL,
  xorg,
  withCraftFonts ? true,
}:

let
  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "3d9ab3a132ed0eff457e424226a435a901da30d3";
    hash = "sha256-mNnDzBcOp1X10dzmiW0iBAkb74QjuzMO4slWudxXCTE=";
  };

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

  runtimeLibs = [
    wayland
    libxkbcommon
    vulkan-loader
    libGL
    xorg.libX11
    xorg.libXcursor
    xorg.libXi
    xorg.libXrandr
  ];
in
rustPlatform.buildRustPackage (finalAttrs: {
  pname = "pdfcraft";
  version = "0.7.1";

  src = fetchFromGitHub {
    owner = "storytold";
    repo = "pdfcraft";
    tag = "v${finalAttrs.version}";
    hash = "sha256-NX13tMfH0Vlaas8XUrU2gCafBznsJNofsz5umoM6oFM=";
  };

  cargoHash = "sha256-SteIhFWlq3vqOlNi4ETXOXadsffGvw2MgEmQ1VOgK2s=";

  nativeBuildInputs = [ pkg-config ];
  buildInputs = runtimeLibs;

  cargoBuildFlags = [
    "-p"
    "pdfcraft"
    "-p"
    "pdfcraft-cli"
  ];

  env = lib.optionalAttrs withCraftFonts {
    CRAFT_FONTS_DIR = craftFonts;
    CRAFT_FONTS_REQUIRED = "1";
  };

  doCheck = false;

  postInstall = ''
    install -Dm644 packaging/linux/ai.storyteller.pdfcraft.desktop -t $out/share/applications
    install -Dm644 packaging/linux/ai.storyteller.pdfcraft.mime.xml $out/share/mime/packages/ai.storyteller.pdfcraft.xml
    mkdir -p $out/share/icons
    cp -R assets/app-icon/hicolor $out/share/icons/
  ''
  + lib.concatStrings (
    lib.mapAttrsToList (name: file: ''
      install -Dm644 ${file} $out/share/pdfcraft/models/${name}
    '') ocrModels
  );

  postFixup = ''
    patchelf --add-rpath ${lib.makeLibraryPath runtimeLibs} $out/bin/pdfcraft
  '';

  meta = {
    description = "PDF workbench: read, organize, combine, split and secure PDFs";
    homepage = "https://github.com/storytold/pdfcraft";
    license = with lib.licenses; [
      mit
      asl20
    ];
    mainProgram = "pdfcraft";
    platforms = lib.platforms.linux;
  };
})
