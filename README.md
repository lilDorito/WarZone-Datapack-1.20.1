# WarZone Datapack (1.20.1)

<p align="center">
  <img src="https://img.shields.io/badge/Minecraft-1.20.1-3C8527?style=for-the-badge" alt="Minecraft 1.20.1" />
  <img src="https://img.shields.io/badge/Forge-47.4.10-F58220?style=for-the-badge" alt="Forge 47.4.10" />
  <img src="https://img.shields.io/badge/Pack%20format-15-555555?style=for-the-badge" alt="Pack format 15" />
  <img src="https://img.shields.io/badge/VS%20Code-Spyglass-007ACC?style=for-the-badge&logo=visual-studio-code&logoColor=white" alt="VS Code Spyglass" />
  <img src="https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey?style=for-the-badge" alt="CC BY-NC-SA 4.0" />
</p>

The game logic for a custom multiplayer military combat server on Forge 1.20.1. It has **five match modes**: Free-For-All, Team Deathmatch for 2 or 4 teams (each in **Arcade** or **Realistic** scoring), Gun Game and the beacon-assault **WarZone** mode. FFA also comes in two special variants, **Vehicles** and **Snipers**. Under them sits a **loadout system** that gives out weapons, kits, drones, electronic-warfare gear, armor, refills, ground vehicles, helicopters, aircraft, boats and cosmetic skins, with cooldowns and per-map and per-mode restrictions.

> [!IMPORTANT]
> **This is not a standalone, drop-in datapack.** It is one part of a larger, heavily modified and overhauled mod ecosystem:
>
> 1. **Forked military mods.** The pack targets *specific forked builds* of its core military mods. Six of them are **private forks** and one is a **public fork** (see [Dependencies](#dependencies)). Upstream releases of these mods are **not supported**. Item IDs, entity IDs, NBT and behaviour the pack relies on may be missing or work differently there.
> 2. **Custom map builds.** Spawn spreads, beacon zones and map-select logic point at hand-built maps (Trenches, Army Base, WarZone, Vertikal'-8, etc.) that live in the project's world and are **not included in this repository**.
>
> You can read, learn from and adapt the code, but it won't run "as is" on a stock modpack or a fresh world.

**Player-facing loadout reference -> [LOADOUTS.md](LOADOUTS.md)**

---

## Table of contents

- [Dependencies](#dependencies)
- [Gamemodes](#gamemodes)
- [Shared match features](#shared-match-features)
- [Maps](#maps)
- [Loadout system](#loadout-system-overview)
- [Installation](#installation)
- [Running a match (admin reference)](#running-a-match-admin-reference)
- [Repository structure](#repository-structure)
- [Development](#development)
- [License](#license)

---

## Dependencies

### Platform

| Component | Version |
|---|---|
| Minecraft Java Edition | **1.20.1** |
| Forge | **47.4.10** |
| Datapack `pack_format` | 15 |

### Core military mods (WarZone ecosystem)

These mods provide nearly every weapon, vehicle and munition the pack hands out. All of them are **forked** for this project and the datapack is written against these exact builds.

| Mod | Required version | Fork | Namespace | Used for |
|---|---|---|---|---|
| SuperbWarfare (SBW) | `0.8.9.2-warzone-1.0.2` | 🔒 **Private fork** of [SuperbWarfare](https://www.curseforge.com/minecraft/mc-mods/superb-warfare) | `superbwarfare:` | Firearms, ammo, launchers, explosives, mines, drones, armor, plates, medkits, parachute, thermal goggles, base vehicles and aircraft, vehicle munitions |
| MCSP | `1.0.10-warzone-1.0.1` | 🔒 **Private fork** of [MCSP](https://www.curseforge.com/minecraft/mc-mods/mcsp-military-vehicle) | `mcsp:` | Most ground vehicles (Abrams, Bradley, T-80/T-90, BMD-4, Sprut, Humvee, Typhoon, Ural, TOS-1A…), light armor, 40 mm and TOS-1A ammo |
| SBW EW WarZone | `1.1.2-warzone` | 🔒 **Private fork**, combining [[SBW] Electronic Warfare](https://www.curseforge.com/minecraft/mc-mods/sbw-electronic-warfare) and [[SBW] Drone Warfare](https://www.curseforge.com/minecraft/mc-mods/sbw-drone-warfare) | `sbw_ew_addon:` | Jammers, direction finder, signal interceptor, EMP gun, drone nets, fiber-optic cable, tactical drones (recon, heavy bomber, delivery), Bayraktar TB2, ZALA Kub-BLA, team radios |
| MH Warfare WarZone | `1.2.0` | 🔒 **Private fork** of [MH Warfare](https://www.curseforge.com/minecraft/mc-mods/mh-warfare) | `mhwarfare:` | Strategic drones (Molniya-1, Hornet, Lancet-3, Sych-1, UJ-25 Skyline) and interceptor drones (Sting, P1-Sun, Alexa Spatium) |
| UAV Horizon WarZone | `1.1.0` | 🔒 **Private fork** of [UAV Horizon](https://www.curseforge.com/minecraft/mc-mods/uav-horizon) | `uavhorizonmod:` | Strategic drones (Gerbera-1, Geran-2, Geran-2 Seeker, Geran-4, Geran-4 Seeker, FP-1) |
| AshVehicles | `4.6-warzone-1.0.1` | 🔒 **Private fork** of [AshVehicles](https://www.curseforge.com/minecraft/mc-mods/ashvehicles) | `ashvehicle:` | Most fixed-wing aircraft and helicopters, Gepard / Pantsir / M777, air-to-air and air-to-ground missiles, guided bombs |
| [Air Tactical Arsenal - WarZone](https://www.curseforge.com/minecraft/mc-mods/air-tactical-arsenal-warzone) | `1.3.3` | 🌐 **Public fork** of [Air Tactical Arsenal](https://modrinth.com/mod/air-tactical-arsenal) | `ata:` | Shahed-136 strike UAV, Orlan recon UAV, light / heavy UAV launchers and the UAV control tablet, Iskander-M ballistic missile, radar and air-raid siren |

> [!NOTE]
> The private forks are not distributed. The upstream links above go to the original mods, credited as the base of each fork. Installing the upstream versions **will not** reproduce the WarZone environment.

### Supporting mods and datapacks

| Mod | Namespace / command | Used for |
|---|---|---|
| [Vertical Spawn](https://www.curseforge.com/minecraft/mc-mods/vertical-spawn) `1.0.0` | `verticalspawn` command | 3D spawn zones: spreads and respawns players across the floors of multi-storey buildings (used by Vertikal'-8) |
| [Curios API](https://www.curseforge.com/minecraft/mc-mods/curios) | `curios` command | Back slot (parachute) and head slot (thermal goggles) |
| [Server Waypoint Reworked](https://www.curseforge.com/minecraft/mc-mods/server-waypoint-reworked) | `wp` command | Storing and teleporting to team spawn points |
| [Skin Restorer](https://www.curseforge.com/minecraft/mc-mods/skinrestorer) | `skin` command | Cosmetic skin loadouts |
| [Xaero's Map Server Utils](https://modrinth.com/datapack/xaeros-map-server-utils) | `xaero:` functions | Enforces Fair-Play mode for [Xaero's Minimap](https://www.curseforge.com/minecraft/mc-mods/xaeros-minimap) / [World Map](https://www.curseforge.com/minecraft/mc-mods/xaeros-world-map) |

> [!NOTE]
> **Vertical Spawn** is an original, public mod made for this project by the datapack's author. It lets admins mark whole 3D zones (a building, a tower, a bunker) as spawn areas, so players are spread and respawned across every floor instead of on the ground or the roof.

> **No longer dependencies:** Thermal Imaging Goggles (thermal vision now uses SBW's own `superbwarfare:thermal_imaging_goggles`) and Walkie-Talkie (team radios now come from SBW EW WarZone).

---

## Gamemodes

The active mode is stored in the `match_mode` scoreboard (`#game`) and shown in the sidebar.

| # | Mode | Start function | Maps | Summary |
|---|---|---|---|---|
| 1 | **FFA** | `admin/ffa/start_ffa_arcade` · `…_realistic` | Any | Every player for themselves. Players spread across the map and each gets an individual colour (up to 16). |
| 1 | ↳ **Vehicles** (FFA variant) | `admin/vehicle/start` | Trenches, Army Base, WarZone | FFA built around vehicles. **Weapon, kit, drone and EW loadouts are disabled. All vehicle, helicopter, aircraft and boat loadouts have no cooldown.** Always Arcade scoring. |
| 1 | ↳ **Snipers** (FFA variant) | `admin/snipers/start` | Industrial 2, Forest, DUGA, Radar, Hospital, Vertikal'-8 | FFA with **pistols, rifles and snipers only**. Kits, vehicles and most drones are disabled; recon FPV drones and EW gear stay available. Always Arcade scoring. |
| 2 | **TDM-2** | `admin/tdm/start_tdm2_arcade` · `…_realistic` | Any | Red vs Blue. Balanced team assignment, team spawn points, a radio for every player. Only cross-team kills count. |
| 3 | **TDM-4** | `admin/tdm/start_tdm4_arcade` · `…_realistic` | Any | Red / Blue / Green / Yellow, with per-team spawns and kill tracking for every team pairing. |
| 4 | **Gun Game** | `admin/gungame/start` | Any | First to **20 kills** wins. Each kill advances you to the next weapon. All loadouts except refills/armor/extras are disabled. |
| 5 | **WarZone** | `admin/warzone/start` | WarZone only | Red vs Blue beacon assault. See below. |

FFA's variant is stored in the `variant` scoreboard (`#game`): `0` = normal FFA, `1` = Vehicles, `2` = Snipers. The sidebar shows the variant name instead of "FFA".

### Arcade vs Realistic

FFA, TDM-2 and TDM-4 each start in one of two scoring styles. The choice is shown in the sidebar (e.g. "Realistic TDM-2"), and in Realistic the sidebar column is labelled **Points** instead of Kills.

| Style | Scoring |
|---|---|
| **Arcade** | Each kill scores a point. Deaths cost nothing. |
| **Realistic** | Each kill scores a point and **each death takes one away** (a score never drops below 0). |

Vehicles, Snipers, Gun Game and WarZone always use Arcade scoring.

The plain `start_tdm2` / `start_tdm4` / `ffa/start` functions reuse whichever style was set last (Arcade after `init`). Plain `ffa/start` also reuses the last FFA variant, so use the named start functions to be sure which mode you get.

### Gun Game

- **20 stages.** The weapon category order is fixed: LMG ×2 -> Sniper ×3 -> Rifle ×2 -> AR ×5 -> SMG ×2 -> Shotgun ×2 -> Pistol ×3 -> **Knife** (final kill).
- The specific gun in each stage is **rolled at random once per match** from that category, with no repeats, so every player follows the same sequence.
- Each player's inventory is checked every tick, and any gun that doesn't belong to their current stage is removed.
- Everyone receives the start kit at round start. Late joiners are put in at stage 1.

### WarZone

1. Players are split into Red and Blue. One random player on each team receives a **beacon**.
2. Each team must place its beacon **inside its own base zone** (defined by the predicates in `predicates/warzone/`). A beacon placed outside the zone is removed and returned to the player.
3. **All loadouts stay locked until both beacons are placed.** Then the match begins. Kills only start counting once the match has begun.
4. The first team to **destroy the enemy beacon** wins. If a beacon is broken during setup, that team has to place it again.
5. Some loadouts have shorter cooldowns in this mode: the MLRS kit, Comanche and Ka-52 (10 min instead of 20), the Black Hawk (10 min instead of 15) and the Little Bird (5 min instead of 10). See [LOADOUTS.md](LOADOUTS.md).

---

## Shared match features

- **Clean start:** every start function first runs `admin/match/prepare`. It resets all loadout cooldowns, start-kit flags, radios, spawn protection and the admin drone rules (back to enabled), and clears every inventory.
- **Spawn protection:** 10 s of Resistance V after every respawn. It ends early if you deal damage.
- **Team spawns (TDM-2 / TDM-4 / WarZone):** up to 3 spawn points per team, used in rotation. They are stored with Server Waypoint Reworked, with a fallback to the default spawn if none are set.
- **Random spread (FFA / Vehicles / Snipers / Gun Game):** players are spread over a map-specific area at round start. On Vertikal'-8 the spread uses Vertical Spawn, so players start on random floors of the two towers.
- **Live HUD:** kills/deaths in the actionbar. The sidebar shows the current mode, the map and the leading team (or the WarZone winner).
- **Late join:** players who join mid-match are assigned to a team automatically. In FFA and Gun Game each colour stays reserved for its player for the whole match, even if they log off.
- **Radios:** in TDM-2, TDM-4 and WarZone every player is given a radio at round start. Late joiners get one as soon as they're assigned to a team.
- **Team points:** team totals are tracked separately from player scores, so a team keeps its points when a player leaves. The sidebar's leading-team row uses these totals.
- **Match results:** an admin ends a match with `admin/match/end_game`. This freezes all scores and posts a ranked table in chat (points, then kills, then deaths), plus team totals in TDM-2, TDM-4 and WarZone. Results stay frozen until the next match starts.
- **World rules set on init:** `keepInventory true`, advancement announcements off, death messages on.

---

## Maps

Maps are selected with `function loadouts:admin/map/<name>`. The selection controls which loadouts are allowed, the start kit extras and the spread area.

| ID | Function | Map |
|---|---|---|
| 0 | `admin/reset/map` | *None* (no map configured, so map restrictions don't apply) |
| 1 | `admin/map/industrial_1` | Industrial 1 |
| 2 | `admin/map/industrial_2` | Industrial 2 |
| 3 | `admin/map/forest` | Forest |
| 4 | `admin/map/duga` | DUGA |
| 5 | `admin/map/village` | Village |
| 6 | `admin/map/radar` | Radar |
| 7 | `admin/map/trenches` | Trenches |
| 8 | `admin/map/hospital` | Hospital |
| 9 | `admin/map/base` | Army Base |
| 10 | `admin/map/wild_west` | Wild West |
| 11 | `admin/map/kombinat` | Kombinat |
| 12 | `admin/map/outpost` | Outpost |
| 13 | `admin/map/warzone` | WarZone |
| 14 | `admin/map/zone` | Exclusion Zone |
| 15 | `admin/map/vertikal` | Vertikal'-8 |

The large maps (**Trenches, Army Base, Kombinat, WarZone**) support ground vehicles. **WarZone** is the only map that allows aircraft, boats, heavy helicopters, strategic and interceptor drones, and the Iskander-M and Radar kits. **Exclusion Zone** is a large infantry map: no vehicles or helicopters, but MLRS, mortars, tactical drones and EW gear are allowed.

### Vertikal'-8

Two abandoned, overgrown office towers in the middle of a city. Selecting the map registers both towers as **Vertical Spawn** zones (`tower_a`, `tower_b`) and turns the mod on, so players spawn across every floor of the two buildings. Every other map turns Vertical Spawn off, and `admin/reset/map` clears the zones. Vertikal'-8 is built for close-quarters infantry and Snipers mode; no vehicles, mortars or MLRS are allowed there.

---

## Loadout system overview

Every loadout is a plain function under the `loadouts:` namespace, for example `function loadouts:ar/ak47` or `function loadouts:vehicle/armor/t90a`. How players trigger them (op level, command aliases, buttons, NPCs…) is up to the server.

| Group | Folder | Count |
|---|---|---|
| Weapons (AR, LMG, pistol, rifle, shotgun, SMG, sniper) | `ar/`, `lmg/`, `pistol/`, `rifle/`, `shotgun/`, `smg/`, `sniper/` | 30 |
| Kits (start kit + 12 equipment kits) | `kit/` | 13 |
| Drones (15 strategic, 3 interceptor, 4 tactical) | `drone/strategic/`, `drone/interceptor/`, `drone/tactical/` | 22 |
| Electronic warfare | `ew/` | 7 |
| Armor (light / heavy) | `armor/` | 2 |
| Refills (ammo, meds, plates, food, blocks, fuel) | `refill/` | 10 |
| Extras (camo, repair, thermal, inventory clean-up) | `extra/` | 5 |
| Ground vehicles (MBT, IFV, AA, artillery, trucks/MRAP) | `vehicle/` | 54 |
| Helicopters | `heli/` | 7 |
| Fixed-wing aircraft and UAVs | `aircraft/` | 30 |
| Boats | `boat/` | 2 |
| Cosmetic skins | `skin/` | 32 |

Every gameplay loadout runs the same checks in the same order:

1. **Match started?** No loadouts outside a match.
2. **WarZone beacons placed?** Locked until both are set.
3. **Mode allowed?** For example, no weapons in Vehicles, no kits in Snipers and no vehicles in Gun Game.
4. **Map allowed?** Per-loadout map whitelist.
5. **Cooldown ready?** Cooldowns are shared per category, and how long the category stays locked depends on the item taken. If not ready, the player is told how many seconds remain.
6. **Give:** removes other items from the same category, then gives the new item and tops ammo up to a fixed amount.
7. **Start cooldown** (skipped for vehicles in Vehicles mode).

The full player reference (contents, cooldowns, map availability, mode restrictions) is in **[LOADOUTS.md](LOADOUTS.md)**.

---

## Installation

1. Set up a **Forge 1.20.1-47.4.10** server (and matching clients) with every mod in [Dependencies](#dependencies). The core military mods must be the **WarZone fork builds** at the listed versions.
2. Copy the `loadouts/` folder into `<world>/datapacks/`.
3. Make sure the map builds exist in the world at the coordinates the pack expects (`admin/spread/on_start`, `predicates/warzone/*`, and the Vertical Spawn zones in `admin/map/vertikal`), or edit those files to match your own builds.
4. In game run `/reload`, then `/function loadouts:admin/init/init`.

`admin/init/init` creates the teams, scoreboard objectives and sidebar, resets every cooldown and start-kit flag, clears the map selection, turns on Xaero Fair-Play mode, and sets the gamerules.

---

## Running a match (admin reference)

All admin functions live under `loadouts:admin/…`. They are not meant for players.

| Task | Function(s) |
|---|---|
| First-time setup / full reset | `admin/init/init` |
| Choose a map | `admin/map/<name>` · clear with `admin/reset/map` |
| Set team spawns (stand on the spot) | `admin/tdm/spawns/set_<red\|blue\|green\|yellow>_spawn[_2\|_3]` |
| List / clear spawns | `admin/tdm/spawns/spawn_list` · `admin/tdm/spawns/clear_spawns` |
| Start a mode | `admin/ffa/start_ffa_arcade` · `admin/ffa/start_ffa_realistic` · `admin/vehicle/start` · `admin/snipers/start` · `admin/tdm/start_tdm2_arcade` · `admin/tdm/start_tdm2_realistic` · `admin/tdm/start_tdm4_arcade` · `admin/tdm/start_tdm4_realistic` · `admin/gungame/start` · `admin/warzone/start` |
| End a match and post results | `admin/match/end_game` |
| Reset cooldowns | `admin/reset/cd_loadouts` · `cd_vehicle` · `cd_helis` · `cd_aircraft` · `cd_boat` · `cd_armor` · `cd_thermal` |
| Let players take the start kit again | `admin/reset/start_kits` |
| Clear every inventory | `admin/reset/inv` |
| Disable / re-enable all tactical drones (disabling also destroys deployed ones) | `admin/rules/disable_tactical_drones` · `admin/rules/enable_tactical_drones` |
| Disable / re-enable tactical strike drones only (Strike FPV, Heavy bomber) | `admin/rules/disable_tactical_strike_drones` · `admin/rules/enable_tactical_strike_drones` |
| Destroy deployed tactical drones without disabling them | `admin/rules/kill_tactical_drones` · `admin/rules/kill_tactical_strike_drones` |
| Re-apply Xaero Fair-Play | `admin/xaero/fairplay` |
| Debug output on / off | `admin/debug/on` · `admin/debug/off` |

For FFA, Vehicles, Snipers and Gun Game, run the start function **from the map's centre**. It sets the world spawn at your position.

Drone rules only last for the current match. Every match start (and `init`) switches all tactical drones back on.

---

## Repository structure

```
.
├── loadouts/                       <- the datapack (copy this into world/datapacks/)
│   ├── pack.mcmeta
│   ├── spyglass.json
│   └── data/
│       ├── minecraft/tags/functions/tick.json
│       └── loadouts/
│           ├── advancements/       <- kill tracking, damage detection, beacon placement
│           ├── loot_tables/gungame <- helpers for the Gun Game random roll
│           ├── predicates/warzone  <- red / blue base zones
│           └── functions/
│               ├── tick.mcfunction, actionbar.mcfunction
│               ├── admin/          <- gamemodes, maps, spawns, rules, scoring, match start/end, resets, scoreboard, init
│               ├── ar/ lmg/ pistol/ rifle/ shotgun/ smg/ sniper/
│               ├── kit/ drone/ ew/ armor/ refill/ extra/ skin/
│               └── vehicle/ heli/ aircraft/ boat/
└── scripts/                        <- Python generators for large repetitive functions
```

---

## Development

- Use **VS Code** with the [Spyglass](https://marketplace.visualstudio.com/items?itemName=SPGoding.vscode-spyglass) extension for live syntax checking. `loadouts/spyglass.json` sets the target game version.
- **Generated files.** Don't edit these by hand. Edit the generator and re-run it:

  | Output | Generator |
  |---|---|
  | `functions/extra/junk_clear.mcfunction` | `scripts/generate_junk_clear.py` |
  | `functions/admin/warzone/locate_{red,blue}_beacon.mcfunction` | `scripts/generate_beacon_scan.py` |

- **Adding a new loadout.** Copy an existing function from the same category so it keeps the standard guard order, then check:
  - the cooldown objective (and its `_sec` twin) is created in `admin/init/objs`;
  - the objective is **decremented in `tick.mcfunction`**;
  - it is reset in the matching `admin/reset/cd_*` function **and** in `admin/match/prepare`;
  - the guard block checks both `match_mode` and `variant` (Vehicles / Snipers) where needed;
  - any new item ID is added to `ALLOWED_ITEMS` in `generate_junk_clear.py`, and the script is re-run;
  - new vehicles/aircraft are added to the `clear` list of **every** loadout in that pool, so a player only ever holds one.

---

## License

"WarZone Datapack" © 2026 by lilDorito is licensed under [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/).

You may share and adapt this datapack for non-commercial purposes if you credit the original author and license any derivative work under the same terms. See [LICENSE](LICENSE) for the full text.

This license covers this repository only. The forked mods it depends on are separate works under their own licenses, and the private forks are not distributed.