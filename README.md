# craft-apps-nix

A Nix flake for productivity apps from [storytold](https://github.com/storytold).
The flake builds each app from source for `x86_64-linux` and `aarch64-linux`.

| Package | Version | App |
|---|---|---|
| `cadcraft` | 0.7.0 | [CADCraft](https://github.com/storytold/cadcraft), 2D drafting and plotting |
| `deckcraft` | 0.7.0 | [DeckCraft](https://github.com/storytold/deckcraft), slide decks |
| `designcraft` | 0.8.0 | [DesignCraft](https://github.com/storytold/designcraft), page layout for print |
| `effectcraft` | 0.10.0 | [EffectCraft](https://github.com/storytold/effectcraft), motion graphics and compositing |
| `figcraft` | 0.6.0 | [FigCraft](https://github.com/storytold/figcraft), interface design and prototypes |
| `filmcraft` | 0.8.0 | [FilmCraft](https://github.com/storytold/filmcraft), video editing |
| `gridcraft` | 0.7.0 | [GridCraft](https://github.com/storytold/gridcraft), workbooks and charts |
| `lightcraft` | 0.8.0 | [LightCraft](https://github.com/storytold/lightcraft), photo library and raw development |
| `pdfcraft` | 0.8.0 | [PdfCraft](https://github.com/storytold/pdfcraft), a PDF workbench |
| `photocraft` | 0.9.0 | [PhotoCraft](https://github.com/storytold/photocraft), photos and layered PSD files |
| `soundcraft` | 0.7.0 | [SoundCraft](https://github.com/storytold/soundcraft), audio and MIDI recording and mixing |
| `vectorcraft` | 0.11.0 | [VectorCraft](https://github.com/storytold/vectorcraft), vector illustration |
| `wordcraft` | 0.7.0 | [WordCraft](https://github.com/storytold/wordcraft), documents and Word files |

Each package contains:

- The desktop app, for example `pdfcraft`.
- The command-line tool, for example `pdfcraft-cli`.
- The desktop entry, the MIME type and the icons.

All apps except EffectCraft and SoundCraft embed the craft-fonts set at the commit that the upstream release uses.
PdfCraft also contains the OCR models for Scan & OCR.
LightCraft and PhotoCraft open HEIC photos.

## Try it

```sh
nix run github:mrrubinos/craft-apps-nix#pdfcraft
```

## Use it in a NixOS configuration

Add the input to `flake.nix`:

```nix
inputs.craft-apps = {
  url = "github:mrrubinos/craft-apps-nix";
  inputs.nixpkgs.follows = "nixpkgs";
};
```

Add the overlay and the packages to a NixOS module.
Each app is a separate package. Add only the apps that you use:

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
| `nixpkgs` | `nixos-unstable` | The libraries, the C toolchain, and Rust for all apps except PdfCraft |
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
| `overlays.default` | Adds all packages to the package set |
| `formatter.<system>` | `nixfmt` |

## Layout

| File | Content |
|---|---|
| `pkgs/mk-craft-app.nix` | The builder that all apps use |
| `pkgs/<app>.nix` | The version, the hashes and the extra inputs of one app |

## License

The files of this flake are licensed under MIT. See `LICENSE`.

The apps are licensed under MIT or Apache-2.0.
The OCR models are licensed under CC-BY-SA-4.0.
The craft-fonts set is licensed under OFL-1.1.
