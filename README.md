# WarZone Datapack (1.20.1)

A Forge datapack powering a custom multiplayer combat project: Free-For-All, Team Deathmatch (2 and 4 teams), Gun Game, and a "Warzone" beacon-capture gamemode, on top of a full military loadout system (weapons, vehicles, aircraft, kits, and cosmetic skins).

This repo is **not a standalone, drop-in datapack.** It's tightly coupled to a specific set of custom map builds (`base`, `duga`, `forest`, etc) that live in the project's world and are **not included here**. Without those builds, the functions that reference them (spawn points, zone predicates, map-select logic) have nothing to point at.

## Gamemodes

- **FFA** — free-for-all (`admin/ffa/`)
- **TDM2 / TDM4** - 2-team and 4-team deathmatch, with per-team spawn sets and kill-tracking advancements (`admin/tdm/`)
- **Gun Game** - 20 weapon stages, auto-advance on kill (`admin/gungame/`)
- **Warzone** - beacon capture mode: teams locate, place, and defend beacons per zone, tracked via predicates and scoreboard monitoring (`admin/warzone/`)

## Loadout system

- Weapon categories: assault rifles, LMGs, pistols, rifles, shotguns, SMGs, snipers (`functions/ar`, `lmg`, `pistol`, `rifle`, `shotgun`, `smg`, `sniper`)
- Kits: start kit, C4, drones, grenades, Igla, Javelin, mines, MLRS, mortar, RPG, thumper (`functions/kit`)
- Vehicles: ground vehicles, 3 helicopters, boats, and 22 fixed-wing aircraft (`functions/vehicles`, `heli`, `boat`, `aircraft`)
- Cosmetic skins (`functions/skin`)
- Admin tooling: debug mode, scoreboard setup, cooldown resets, map selection, fairplay checks for Xaero's map (`functions/admin`)

## Requirements

- Minecraft Java Edition **1.20.1**, Forge **47.4.10**
- Mods (referenced by item/entity/command namespace throughout the pack):
  - [SuperbWarfare (SBW)](https://www.curseforge.com/minecraft/mc-mods/superbwarfare) - weapons, ammo, armor, consumables
  - [MCSP](https://www.curseforge.com/minecraft/mc-mods/mcsp-military-vehicle) - additional vehicles/gear addon for SBW (`mcsp:` namespace)
  - [AshVehicles](https://www.curseforge.com/minecraft/mc-mods/ashvehicles) - additional aircraft/munitions addon for SBW (`ashvehicle:` namespace)
  - [Walkie-Talkie](https://www.curseforge.com/minecraft/mc-mods/walkie-talkie) - comms item (`walkietalkie:` namespace)
  - [Thermal Imaging Goggles](https://www.curseforge.com/minecraft/mc-mods/thermal-imaging-goggles) - thermal vision item (`thermal_imaging_goggles:` namespace)
  - [Exoskeleton Armor](https://www.curseforge.com/minecraft/mc-mods/exoskeleton-armor) - exoskeleton items (`exoskeleton:` namespace)
  - [Server Waypoint](https://www.curseforge.com/minecraft/mc-mods/server-waypoint) - server waypoint mod providing the `wp` command
  - [Skin Restorer](https://www.curseforge.com/minecraft/mc-mods/skinrestorer) - custom skins mod providing the `skin` command
  - [Xaero's Map Server Utils](https://modrinth.com/datapack/xaeros-map-server-utils) - fairplay mode for [Xaero's Minimap](https://www.curseforge.com/minecraft/mc-mods/xaeros-minimap) / [Xaero's World Map](https://www.curseforge.com/minecraft/mc-mods/xaeros-world-map) (referenced in `admin/xaero`)
  - [Curios API](https://www.curseforge.com/minecraft/mc-mods/curios) - extra equipment slots

## Setup

1. Install Forge 1.20.1-47.4.10 and all mods listed above.
2. Copy `loadouts/` into the server's `world/datapacks/` folder.
3. Build/import the map structures listed above at whatever coordinates the files expect (or edit those functions to match your own builds).
4. `/reload` in-game, then run `function loadouts:admin/init/init`.

## Development

- Edit with VS Code + the [Spyglass](https://marketplace.visualstudio.com/items?itemName=SPGoding.vscode-spyglass) extension for live syntax checking
  (`spyglass.json` in this repo sets the target version).
- Some files are auto-generated - **do not hand-edit them**, edit the generator and re-run instead:
  - `loadouts/data/loadouts/functions/extra/junk_clear.mcfunction` <- `scripts/generate_junk_clear.py`
  - `loadouts/data/loadouts/functions/admin/warzone/locate_{red,blue}_beacon.mcfunction` <- `scripts/generate_beacon_scan.py`

## License

This project is licensed under [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International (CC BY-NC-SA 4.0)](https://creativecommons.org/licenses/by-nc-sa/4.0/).

You are free to share and adapt this datapack for non-commercial purposes, as long as you credit the original author and license any derivative work under the same terms. See the [LICENSE](LICENSE) file for full details.

Note: this datapack depends on a set of custom map builds that are not included in this repository, so it is not usable standalone.
