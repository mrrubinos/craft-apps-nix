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
  buildFeatures ? [ ],
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

  src = fetchFromGitHub {
    owner = "storytold";
    repo = pname;
    tag = "v${version}";
    inherit hash;
  };
in
rustPlatform.buildRustPackage {
  inherit
    pname
    version
    src
    buildFeatures
    ;

  cargoDeps =
    (rustPlatform.fetchCargoVendor {
      inherit src;
      name = "${pname}-${version}";
      hash = cargoHash;
    }).overrideAttrs
      {
        # cargo metadata rejects a whole git workspace when one edition 2024 member sets default-features = false on a workspace dependency.
        buildCommand = ''
          mkdir staging
          ln -s "$vendorStaging"/* staging/
          if [ -d "$vendorStaging/git" ]; then
            rm staging/git
            cp -r --no-preserve=mode "$vendorStaging/git" staging/git
            find staging/git -name Cargo.toml -exec sed -i -E 's/(workspace = true), default-features = false/\1/' {} +
          fi
          fetch-cargo-vendor-util create-vendor staging "$out"
        '';
      };

  # fetchCargoVendor skips [[patch.unused]] crates, and offline cargo fails on a patch source it cannot load.
  postPatch = ''
    awk '
      FNR == NR { if ($0 == "[[patch.unused]]") unused = 1; else if (unused && $1 == "name") { gsub(/"/, "", $3); skip[$3] = 1; unused = 0 }; next }
      /^\[/ { patch = /^\[patch\./ }
      !(patch && $2 == "=" && ($1 in skip))
    ' Cargo.lock Cargo.toml > Cargo.toml.new
    mv Cargo.toml.new Cargo.toml
  '';

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
