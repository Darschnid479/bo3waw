# WaW to BO3 Converter v1.0

A Visual Basic .NET 10 WinForms tool for converting supported Call of Duty: World at War Zombies map data into BO3 Radiant `.map` references.

## Features

- Decode supported PC WaW `.ff` FastFiles (`IWffu100`, v387, zlib).
- Recover original MapEnts entity positions from supported zones.
- Export an **entities-only** `.map` reference for BO3 Radiant (no world geometry).
- Convert brush geometry from **editable WaW Radiant `.map` source files** into BO3 `iwmap 4` files.
- Extract `.iwd` resources, generate conversion reports and preview recovered placements.
- Export compatible source brush data to a ZombieForge `.zforge.json` project.

> **Important:** Compiled FF files alone are **not** converted to playable, complete maps. No collision, world mesh, world brushes or Zombies gameplay are reconstructed from them in v1.0. FF exports are placement references. BO3 Mod Tools and further adaptation are required.

## Build on Windows

1. Install the [.NET 10 SDK](https://dotnet.microsoft.com/download/dotnet/10.0).
2. Clone or download this repository.
3. Run `BUILD_WINDOWS.bat` (build, publish and self-test).
4. Open `dist\win-x64\WaWtoBO3Converter.exe`.
5. Select a `.ff`, source `.map`, or folder and output directory; click **CONVERT TO BO3 .MAP**.

## Example

`tests/generate_waw420_example.py` can regenerate the entities-only reference for `nazi_zombie_420.ff` when you supply your own copy of the FF. The original game/mod FastFile is **not included** in this repository.

## Status

**v1.0 source preview.** FF decompression and source-data checks were run against a user-provided test file; Windows compilation and live BO3 Radiant import are still unverified. See `docs/QUICK_START_NO.md` and `docs/CHANGELOG.md`.

This repository does not include third-party game assets. Only import files you have the right to use.
