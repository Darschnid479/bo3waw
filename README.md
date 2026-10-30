# WaW to BO3 Converter — v2.0 World Geometry Bridge

**Windows / Visual Basic .NET 10 / BO3 Radiant**

## v2.0 world geometry support

- Import *editable* WaW Radiant `.map` brush geometry and approximate supported patch meshes.
- Import `.obj` world meshes exported by third-party WaW game extractors, triangulate and produce thin closed BO3 Radiant brushes.
- Combine world geometry with recovered MapEnts object locations from supported WaW PC `.ff` FastFiles.
- Support optional `material_mapping.csv` and `model_mapping.csv` for explicitly specified BO3 replacements.
- Export `iwmap 4` `.map` plus reports, source backup, and ZombieForge JSON for moderately sized maps.
- Detect OBJ triangle limits and report incompleteness instead of silently inventing world geometry.
- Includes `BUILD_WINDOWS.bat`, `SELF_TEST_WINDOWS.bat`, and `UPLOAD_TO_GITHUB.bat` in the full project archive.

**Critical limitation:** v2.0 does **not** decompile the compiled `GfxWorld`/`clipMap` world geometry directly from a `.ff` file. With `.ff` alone it can recover only entity placements. Import a real WaW world-geometry `.map` or `.obj` export first. Model assets, UVs, exact textures, collision parity, sound, lighting and Zombies gameplay scripts are **not** ported automatically. This is not an automatic 100% playable map port.

World geometry extraction options:
- [WaWSPMapExporter](https://github.com/kejjjjj/WaWSPMapExporter) — source-like brush, terrain, model export from a supported running WaW SP/Zombies build.
- [Husky](https://github.com/Scobalula/Husky) — external world OBJ export.
- [C2M](https://github.com/sheilan102/C2M) — another game geometry exporter.

## Source status

The complete **v2.0 ZIP/source package has been generated in the ChatGPT conversation**, but the actual source files have **not yet been synced to this GitHub repository**. To publish them here, unpack the ZIP and run `UPLOAD_TO_GITHUB.bat` from its project root on a PC with Git for Windows and GitHub authentication. Do not use `BUILD_WINDOWS.bat` from this partial repo until those files appear.

## Build after syncing

Install the [.NET 10 SDK](https://dotnet.microsoft.com/download/dotnet/10.0). Run `BUILD_WINDOWS.bat` in the synced project root. The build script publishes win-x64 and runs built-in tests.

**Validation:** Static checks and Python FF zlib decompression against `nazi_zombie_420.ff` passed. Native Windows compilation, conversion of actual in-game WaW world exporter output, and live BO3 Radiant import remain unverified.

No third-party game assets are included. Ensure you have permission to port/reuse any map resources.
