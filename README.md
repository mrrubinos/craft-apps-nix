# craft-apps-nix

A Nix flake for productivity apps from [storytold](https://github.com/storytold).
The flake builds each app from source for `x86_64-linux` and `aarch64-linux`.

| Package | Version | App |
|---|---|---|
| `pdfcraft` | 0.7.1 | [PdfCraft](https://github.com/storytold/pdfcraft), a PDF workbench |
| `wordcraft` | 0.5.0 | [WordCraft](https://github.com/storytold/wordcraft), documents and Word files |
| `gridcraft` | 0.5.0 | [GridCraft](https://github.com/storytold/gridcraft), workbooks and charts |
| `deckcraft` | 0.5.0 | [DeckCraft](https://github.com/storytold/deckcraft), slide decks |

Each package contains:

- The desktop app, for example `pdfcraft`.
- The command-line tool, for example `pdfcraft-cli`.
- The desktop entry, the MIME type and the icons.

PdfCraft, WordCraft and DeckCraft embed the craft-fonts set at the commit that the upstream release uses.
PdfCraft also contains the OCR models for Scan & OCR.

## Try it

```sh
nix run github:mrrubinos/pdfcraft-nix#pdfcraft
```

## Use it in a NixOS configuration

Add the input to `flake.nix`:

```nix
inputs.craft-apps = {
  url = "github:mrrubinos/pdfcraft-nix";
  inputs.nixpkgs.follows = "nixpkgs";
};
```

Add the overlay and the packages to a NixOS module:

```nix
{ inputs, pkgs, ... }:
{
  nixpkgs.overlays = [ inputs.craft-apps.overlays.default ];
  environment.systemPackages = with pkgs; [
    pdfcraft
    wordcraft
    gridcraft
    deckcraft
  ];
}
```

To use a package without the overlay, add
`inputs.craft-apps.packages.${pkgs.stdenv.hostPlatform.system}.pdfcraft` to `environment.systemPackages`.

## Inputs

| Input | Channel | Use |
|---|---|---|
| `nixpkgs` | `nixos-unstable` | The libraries, the C toolchain, and Rust for WordCraft, GridCraft and DeckCraft |
| `nixpkgs-rust` | `nixos-26.05` | `rustc` and `cargo` for PdfCraft |

Make `nixpkgs` follow the `nixpkgs` of the system.
The apps load the graphics drivers of the system from `/run/opengl-driver`.
These drivers need the glibc of the system nixpkgs.
If an app links an older glibc, it finds no GPU and does not start.

Do not make `nixpkgs-rust` follow the system nixpkgs.
The `rustc` in `nixos-unstable` cannot compile an AVX-512 VNNI intrinsic in `rten-gemm`, and the PdfCraft build fails.

## Outputs

| Output | Content |
|---|---|
| `packages.<system>.<app>` | The package for each app in the table above |
| `overlays.default` | Adds the four packages to the package set |
| `formatter.<system>` | `nixfmt` |

## Layout

| File | Content |
|---|---|
| `pkgs/mk-craft-app.nix` | The builder that all four apps use |
| `pkgs/<app>.nix` | The version, the hashes and the extra inputs of one app |

## License

The files of this flake are licensed under MIT. See `LICENSE`.

The four apps are licensed under MIT or Apache-2.0.
The OCR models are licensed under CC-BY-SA-4.0.
The craft-fonts set is licensed under OFL-1.1.
