{
  description = "PdfCraft, a PDF workbench written in Rust";

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
      pdfcraftFor =
        pkgs:
        let
          rust = nixpkgs-rust.legacyPackages.${pkgs.stdenv.hostPlatform.system};
        in
        pkgs.callPackage ./package.nix {
          rustPlatform = pkgs.makeRustPlatform { inherit (rust) rustc cargo; };
        };
    in
    {
      packages = forAllSystems (pkgs: {
        pdfcraft = pdfcraftFor pkgs;
        default = self.packages.${pkgs.stdenv.hostPlatform.system}.pdfcraft;
      });

      overlays.default = final: _prev: { pdfcraft = pdfcraftFor final; };

      formatter = forAllSystems (pkgs: pkgs.nixfmt);
    };
}
