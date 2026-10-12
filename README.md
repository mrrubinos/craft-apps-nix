# pdfcraft-nix

A Nix flake for [PdfCraft](https://github.com/storytold/pdfcraft), a PDF workbench written in Rust.
The flake builds PdfCraft from source for `x86_64-linux` and `aarch64-linux`.

The package contains:

- `pdfcraft`, the desktop app.
- `pdfcraft-cli`, the command-line tool.
- The desktop entry, the MIME type and the icons.
- The OCR models for Scan & OCR.
- The craft-fonts set (Japanese and Arabic), as in the official releases.

## Try it

```sh
nix run github:mrrubinos/pdfcraft-nix
```

## Use it in a NixOS configuration

Add the input to `flake.nix`:

```nix
inputs.pdfcraft = {
  url = "github:mrrubinos/pdfcraft-nix";
  inputs.nixpkgs.follows = "nixpkgs";
};
```

Add the overlay and the package to a NixOS module:

```nix
{ inputs, pkgs, ... }:
{
  nixpkgs.overlays = [ inputs.pdfcraft.overlays.default ];
  environment.systemPackages = [ pkgs.pdfcraft ];
}
```

To use the package without the overlay, add
`inputs.pdfcraft.packages.${pkgs.stdenv.hostPlatform.system}.default` to `environment.systemPackages`.

## Inputs

| Input | Channel | Use |
|---|---|---|
| `nixpkgs` | `nixos-unstable` | The libraries and the C toolchain |
| `nixpkgs-rust` | `nixos-26.05` | `rustc` and `cargo` only |

Make `nixpkgs` follow the `nixpkgs` of the system.
The app loads the graphics drivers of the system from `/run/opengl-driver`.
These drivers need the glibc of the system nixpkgs.
If the app links an older glibc, it finds no GPU and does not start.

Do not make `nixpkgs-rust` follow the system nixpkgs.
The `rustc` in `nixos-unstable` cannot compile an AVX-512 VNNI intrinsic in `rten-gemm`, and the build fails.

## Outputs

| Output | Content |
|---|---|
| `packages.<system>.pdfcraft` | The PdfCraft package |
| `packages.<system>.default` | The same package |
| `overlays.default` | Adds `pdfcraft` to the package set |
| `formatter.<system>` | `nixfmt` |

## License

The files of this flake are licensed under MIT. See `LICENSE`.

PdfCraft is licensed under MIT or Apache-2.0.
The OCR models are licensed under CC-BY-SA-4.0.
The craft-fonts set is licensed under OFL-1.1.
