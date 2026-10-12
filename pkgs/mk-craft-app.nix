{
  lib,
  rustPlatform,
  fetchFromGitHub,
  pkg-config,
  wayland,
  libxkbcommon,
  vulkan-loader,
  libGL,
  libx11,
  libxcursor,
  libxi,
  libxrandr,
  dbus,
}:

{
  pname,
  version,
  hash,
  cargoHash,
  description,
  craftFonts ? null,
  buildInputs ? [ ],
  postInstall ? "",
}:

let
  appId = "ai.storyteller.${pname}";

  runtimeLibs = [
    wayland
    libxkbcommon
    vulkan-loader
    libGL
    libx11
    libxcursor
    libxi
    libxrandr
    dbus
  ];
in
rustPlatform.buildRustPackage {
  inherit pname version cargoHash;

  src = fetchFromGitHub {
    owner = "storytold";
    repo = pname;
    tag = "v${version}";
    inherit hash;
  };

  nativeBuildInputs = [ pkg-config ];
  buildInputs = runtimeLibs ++ buildInputs;

  cargoBuildFlags = [
    "-p"
    pname
    "-p"
    "${pname}-cli"
  ];

  env = lib.optionalAttrs (craftFonts != null) {
    CRAFT_FONTS_DIR = craftFonts;
    CRAFT_FONTS_REQUIRED = "1";
  };

  doCheck = false;

  postInstall = ''
    install -Dm644 packaging/linux/${appId}.desktop -t $out/share/applications
    install -Dm644 packaging/linux/${appId}.mime.xml $out/share/mime/packages/${appId}.xml
    mkdir -p $out/share/icons
    cp -R assets/app-icon/hicolor $out/share/icons/
  ''
  + postInstall;

  postFixup = ''
    patchelf --add-rpath ${lib.makeLibraryPath runtimeLibs} $out/bin/${pname}
  '';

  meta = {
    inherit description;
    homepage = "https://github.com/storytold/${pname}";
    license = with lib.licenses; [
      mit
      asl20
    ];
    mainProgram = pname;
    platforms = lib.platforms.linux;
  };
}
