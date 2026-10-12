{
  description = "PdfCraft, WordCraft, GridCraft and DeckCraft from storytold, built from source";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    # rustc 1.98.1 in nixos-unstable is linked against LLVM 21 and rejects the avx512vnni intrinsic rten-gemm uses.
    nixpkgs-rust.url = "github:NixOS/nixpkgs/nixos-26.05";
  };

  outputs =
    {
      self,
      nixpkgs,
      nixpkgs-rust,
    }:
    let
      systems = [
        "x86_64-linux"
        "aarch64-linux"
      ];
      forAllSystems = f: nixpkgs.lib.genAttrs systems (system: f nixpkgs.legacyPackages.${system});
      craftApps =
        pkgs:
        let
          rust = nixpkgs-rust.legacyPackages.${pkgs.stdenv.hostPlatform.system};
          mkCraftApp = pkgs.callPackage ./pkgs/mk-craft-app.nix { };
          mkCraftAppRust = pkgs.callPackage ./pkgs/mk-craft-app.nix {
            rustPlatform = pkgs.makeRustPlatform { inherit (rust) rustc cargo; };
          };
        in
        {
          pdfcraft = pkgs.callPackage ./pkgs/pdfcraft.nix { mkCraftApp = mkCraftAppRust; };
          wordcraft = pkgs.callPackage ./pkgs/wordcraft.nix { inherit mkCraftApp; };
          gridcraft = pkgs.callPackage ./pkgs/gridcraft.nix { inherit mkCraftApp; };
          deckcraft = pkgs.callPackage ./pkgs/deckcraft.nix { inherit mkCraftApp; };
        };
    in
    {
      packages = forAllSystems craftApps;

      overlays.default = final: _prev: craftApps final;

      formatter = forAllSystems (pkgs: pkgs.nixfmt);
    };
}
