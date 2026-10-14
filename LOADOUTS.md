# Loadouts

What every loadout gives you, where it's allowed and how long its cooldown is.

Back to the [README](README.md).

---

## Contents

- [How loadouts work](#how-loadouts-work)
- [Restrictions by gamemode](#restrictions-by-gamemode)
- [Availability by map](#availability-by-map)
- [Start kit](#start-kit)
- [Armor and camo](#armor-and-camo)
- [Weapons](#weapons)
- [Kits](#kits)
- [Refills](#refills)
- [Extras](#extras)
- [Ground vehicles](#ground-vehicles)
- [Helicopters](#helicopters)
- [Aircraft](#aircraft)
- [Boats](#boats)
- [Skins](#skins)

---

## How loadouts work

- **Matches only.** Loadouts work only while a match is running. In **WarZone** they stay locked until **both teams have placed their beacon**. The start kit is the one exception and can be taken during beacon setup. Skins and inventory clean-up always work, even outside a match.
- **Cooldowns are per category, not per item.** Taking an AK-47 puts *all* assault rifles on cooldown. Taking a T-90A locks *all* ground vehicles. Helicopters, aircraft, boats, each weapon class and each kit have their own pools. If you try too early, you're told how many seconds are left.
- **One item per category.** A new weapon replaces any other weapon of the same class you're holding. A new vehicle, helicopter, aircraft or boat replaces any undeployed one of the same type, along with its leftover munitions.
- **Ammo top-up.** Weapon loadouts top your ammo up to a fixed amount. If you already have that much, you just get the gun.
- **Refills don't waste cooldowns.** If you're already full, nothing happens and the cooldown doesn't start.
- **Vehicle deployment.** Every vehicle, helicopter, aircraft and boat loadout also gives a **crowbar** to open a vehicle container.

---

## Restrictions by gamemode

| Loadout group | TDM-2 | FFA | TDM-4 | Vehicle Mode | Gun Game | WarZone |
|---|:-:|:-:|:-:|:-:|:-:|:-:|
| Weapons | ✓ | ✓ | ✓ | ✗ | ✗ | ✓ |
| Kits | ✓ | ✓ | ✓ | ✗ | ✗ | ✓ |
| Ground vehicles, helicopters, aircraft, boats | ✓ | ✓ | ✓ | ✓ **no cooldown** | ✗ | ✓ |
| Start kit, armor, refills, extras | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ |
| Skins | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ |

**Special cooldown rules:**

- **Vehicle Mode:** every ground vehicle, helicopter, aircraft and boat loadout has **no cooldown**. You can respawn your vehicle as often as you like.
- **WarZone:** the **MLRS kit** and the **assault / light attack helicopters** (Black Hawk, Little Bird, Comanche, Ka-52) have half their usual cooldown: **10 min instead of 20**.
- **Gun Game:** you get your weapons from the Gun Game progression, not from loadouts. Refills, armor and extras still work.

---

## Availability by map

Weapons, armor, refills (except fuel), the **Grenades**, **Mines** and **Thumper** kits, thermal vision and skins work on **every map**. Everything else is limited to certain maps:

| Loadout | Ind. 1 | Ind. 2 | Forest | DUGA | Village | Radar | Trenches | Hospital | Army Base | Wild West | Kombinat | Outpost | WarZone |
|---|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| RPG kit | ✓ | ✓ | ✓ | ✓ | · | ✓ | ✓ | ✓ | ✓ | · | ✓ | · | ✓ |
| C4 kit | ✓ | ✓ | ✓ | · | · | ✓ | ✓ | ✓ | ✓ | · | ✓ | · | ✓ |
| Mortar kit, TOW kit | ✓ | ✓ | ✓ | · | · | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ | · | ✓ |
| Drones kit | ✓ | ✓ | · | · | · | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ | · | ✓ |
| MLRS kit | ✓ | · | · | · | · | · | ✓ | · | ✓ | · | ✓ | · | ✓ |
| Javelin kit, Igla kit | · | · | · | · | · | · | ✓ | · | ✓ | · | ✓ | · | ✓ |
| Fuel refill | · | · | · | · | · | · | ✓ | · | ✓ | · | ✓ | · | ✓ |
| Ground vehicles | · | · | · | · | · | · | ✓ | · | ✓ | · | ✓ | · | ✓ |
| Assault / light attack helicopters | · | · | · | · | · | · | ✓ | · | ✓ | · | · | · | ✓ |
| Heavy attack / cargo helicopters | · | · | · | · | · | · | · | · | · | · | · | · | ✓ |
| Aircraft | · | · | · | · | · | · | · | · | · | · | · | · | ✓ |
| Boats | · | · | · | · | · | · | · | · | · | · | · | · | ✓ |
| Shahed, Orlan, Iskander-M, Radar kits | · | · | · | · | · | · | · | · | · | · | · | · | ✓ |

> When no map is configured, all map restrictions are lifted.

---

## Start kit

`kit/start`: **once per match** (no cooldown, it can't be taken again).

| You get | |
|---|---|
| Food | 16 cooked beef |
| Medical | 8 medkits, 32 armor plates |
| Gear | Parachute (back slot), netherite pickaxe (Efficiency V, Unbreaking III), combat knife (boosted damage), 32 dirt |
| Armor | Heavy armor in your selected camo (desert by default) |
| **Trenches, Army Base, Kombinat, WarZone** | + 2 fuel cells (large battery packs) |
| **WarZone** | + 3 obsidian, + artillery indicator |

---

## Armor and camo

| Loadout | You get | Cooldown |
|---|---|---|
| `armor/heavy` | Heavy vest + helmet, in your selected camo | 10 min (shared armor-swap cooldown) |
| `armor/light` | Light tactical vest + Ops-Core helmet | 10 min (shared armor-swap cooldown) |
| `extra/camo_desert` | Sets heavy armor to the **Desert** set (US IOTV + PASGT) | none |
| `extra/camo_marsh` | Sets heavy armor to the **Marsh** set (6B43 + 6B47) | none |

You can't re-equip the armor type you're already wearing. Camos apply to heavy armor only, and your camo choice is kept for future start kits and armor swaps.

---

## Weapons

Every weapon class has its own **10 min** cooldown. Weapons are disabled in Vehicle Mode and Gun Game.

| Class | Weapons | Ammo topped up to |
|---|---|---|
| **Assault rifles** (`ar/`) | AK-12, AK-47, HK-416, Insidious, M4, MK-14, QBZ-191, QBZ-95 | 192 rifle |
| **LMGs** (`lmg/`) | Devotion, M-60, M-134 Minigun, RPK | 192 rifle |
| | Browning M2HB | 64 heavy |
| **Pistols** (`pistol/`) | Glock-18, M-1911A1, MP-443 | 192 handgun |
| | Trachelium revolver | 64 rifle |
| **Rifles** (`rifle/`) | Kar-98k, Mosin | 32 sniper |
| | Marlin, SKS | 64 rifle |
| **Shotguns** (`shotgun/`) | AA-12, M-870 MCS | 64 shotgun |
| **SMGs** (`smg/`) | MP5, Vector | 192 handgun |
| **Snipers** (`sniper/`) | AWM, Barrett M98B, Sentinel, SVD | 32 sniper |
| | NTW-20 | 32 heavy |

---

## Kits

Each kit has its own cooldown. Kits are disabled in Vehicle Mode and Gun Game. See [Availability by map](#availability-by-map) for where each one works.

| Kit | You get | Cooldown |
|---|---|---|
| **Grenades** | 8 RGO, 8 hand grenades, 8 M18 smoke grenades | 10 min |
| **Mines** | 2 PTKM-1R, 4 TM-62, 8 claymores, 8 BLU-43, 2 tripwire mines | 10 min |
| **Thumper** | M-79 grenade launcher + 16 × 40 mm grenades | 10 min |
| **RPG** | RPG + 8 RPG rockets | 10 min |
| **C4** | 8 remote C4 charges, detonator, defuser | 10 min |
| **Mortar** | 2 mortars, 2 monitors, artillery indicator, 16 mortar shells | 10 min |
| **TOW** | Deployable TOW launcher + 8 anti-tank missiles | 10 min |
| **Drones** | 8 drones, 2 monitors, 8 mortar shells to drop | 10 min |
| **Javelin** | Javelin + 8 missiles | 10 min |
| **Igla** | Igla 9K38 MANPADS + 8 anti-air missiles | 10 min |
| **MLRS** | Deployable Type 63 MLRS + 8 AP, 8 HE, 4 cluster rockets, artillery indicator | 20 min (**10 min in WarZone**) |
| **Shahed** | Shahed strike UAV + launcher + control tablet | 10 min |
| **Orlan** | Orlan recon UAV + launcher + control tablet | 10 min |
| **Radar** | Radar for air target display and tracking | 20 min |
| **Iskander-M** | 1 Iskander-M ballistic missile (you'll need a launch site) | 20 min |

---

## Refills

Refills top you up to a fixed amount and do nothing if you're already full.

| Refill | Gives | Cooldown |
|---|---|---|
| Rifle ammo | 192 | 5 min |
| Handgun ammo | 192 | 5 min |
| Shotgun ammo | 64 | 5 min |
| Sniper ammo | 32 | 5 min |
| Heavy ammo | 64 | 5 min |
| Medkits | 8 | 10 min |
| Armor plates | 32 | 10 min |
| Food | 16 cooked beef | 10 min |
| Blocks | 32 dirt | 10 min |
| Fuel | 2 fuel cells (vehicle maps only) | 5 min |

---

## Extras

| Loadout | What it does | Cooldown |
|---|---|---|
| **Thermal vision** | Equips thermal goggles for **30 s**, then removes them. Everyone is told when you switch it on. | 5 min (from activation) |
| **Repair armor** | Replaces your current armor (light or heavy, in your camo) with a fresh set | none |
| **Junk clear** | Deletes every item that didn't come from a loadout | none |
| **Desert / Marsh camo** | See [Armor and camo](#armor-and-camo) | none |

---

## Ground vehicles

**One shared cooldown for all ground vehicles.** Available on Trenches, Army Base, Kombinat and WarZone. **No cooldown in Vehicle Mode.** Most vehicles also come with 8 smoke charges.

### Main battle tanks

AP, HE and canister shells, coaxial MG ammo. The Russian tanks also carry gun-launched ATGMs.

| Vehicle | Variants | Cooldown |
|---|---|---|
| ZTZ-99A | basic, sand | 11.5 min |
| M1A2 Abrams | basic, sand | 11.5 min |
| M1A2 Abrams SEP | basic, sand | 13.5 min |
| T-80BV | basic, camo, pixel, snow | 13.5 min |
| T-80U | basic, camo, pixel, snow | 14 min |
| T-90A | basic, camo | 14.5 min |

### Light tanks and IFVs

Autocannon shells, coaxial MG ammo and 16 ATGMs (LAV-150: autocannon only). Sprut-SD, BMD-4 and ZBD-04A also carry main-gun shells.

| Vehicle | Variants | Cooldown |
|---|---|---|
| LAV-150 Commando | basic | 8 min |
| LAV-25 | basic | 10 min |
| BMP-2 | basic | 10 min |
| M3A3 Bradley | basic, sand | 10 min |
| M3A3 Bradley BUSK II | basic, sand | 11 min |
| M3A3 Bradley BUSK III | basic, sand | 12 min |
| BMD-4 | basic, camo | 12 min |
| ZBD-04A | basic, sand | 12 min |
| 2S25 Sprut-SD | basic, camo | 12 min |

### Anti-air

| Vehicle | Variants | You get | Cooldown |
|---|---|---|---|
| Gepard 1A2 | basic | 128 AA shells | 8 min |
| LAV-AD | basic | 16 AA missiles, 256 AA shells | 12 min |
| Pantsir-S1 | basic | 16 AA missiles, 256 AA shells | 15 min |

### Artillery

| Vehicle | Variants | You get | Cooldown |
|---|---|---|---|
| M-777 howitzer | basic | AP, HE, white phosphorus and cluster shells, artillery indicator | 8 min |
| PLZ-05 | basic | AP, HE, white phosphorus and cluster shells, artillery indicator | 13 min |
| FH77 BW L52 Archer | basic | AP, HE, white phosphorus and cluster shells, MG ammo, artillery indicator | 14 min |
| TOS-1A Solntsepyok | basic, camo | 42 thermobaric rocket shells, artillery indicator | 15 min |

### Trucks, MRAPs and technicals

| Vehicle | Variants | You get | Cooldown |
|---|---|---|---|
| Humvee | basic, camo, sand | — | 5 min |
| Humvee Mk 19 | basic | 64 × 40 mm grenades, 4 ATGMs | 8 min |
| Ural-4320 | basic, camo | — | 5 min |
| Ural Typhoon MRAP | basic, camo, snow | — | 5 min |
| Ural Typhoon-K MRAP 30mm | basic, camo, snow | 30 mm autocannon (incl. AA), MG ammo | 8 min |
| Machine Gun Pickup | basic | 192 heavy ammo | 5 min |
| TOW Pickup | basic | 8 ATGMs | 5 min |
| MLRS Pickup | basic | AP / HE / cluster rockets, artillery indicator | 5 min |

---

## Helicopters

**One shared cooldown for all helicopters.** Every helicopter comes with 16 flares. **No cooldown in Vehicle Mode.**

| Helicopter | You get | Maps | Cooldown |
|---|---|---|---|
| **AH-6 Little Bird** | Cannon shells, 16 rockets | Army Base, Trenches, WarZone | 20 min (**10 in WarZone**) |
| **MH-60M Black Hawk** | Cannon shells, 32 rockets | Army Base, Trenches, WarZone | 20 min (**10 in WarZone**) |
| **RAH-66 Comanche** | Cannon shells, 32 rockets, 4 AA missiles, 4 Hellfires | Army Base, Trenches, WarZone | 20 min (**10 in WarZone**) |
| **Ka-52 Alligator** | Cannon shells, 32 rockets, 4 AA missiles, 4 ATGMs | Army Base, Trenches, WarZone | 20 min (**10 in WarZone**) |
| **V-22 Osprey** | Cannon shells | WarZone | 8 min |
| **AH-64 Apache** | Cannon shells, 32 rockets, 8 AA missiles, 8 Hellfires | WarZone | 13.5 min |
| **Mi-28 Havoc** | Cannon shells, 32 rockets, 8 AA missiles, 8 ATGMs | WarZone | 13.5 min |

---

## Aircraft

**One shared cooldown for all aircraft.** **WarZone map only.** **No cooldown in Vehicle Mode.** Unless noted, every aircraft gets cannon shells (128 AP + 128 HE) and 16 flares.

| Role | Aircraft | Weapons | Cooldown |
|---|---|---|---|
| **Light / vintage** | Potuzhnolit | Heavy MG ammo, 16 mortar shells to drop (no flares) | 5 min |
| | Ju-87 Stuka | 4 small + 2 medium bombs, MG ammo, 8 flares | 7 min |
| | MiG-15 Fagot | 4 small bombs, reduced cannon ammo, 8 flares | 7 min |
| **Fighters** | F-15 Eagle | 4 AIM-9, 4 AIM-120 | 10 min |
| | Su-27 Flanker | 4 R-60, 4 R-77 | 10 min |
| | YF-23 Black Widow II | 2 AIM-9, 6 AIM-120 | 11.5 min |
| | Su-33 Flanker-D | 3 R-60, 5 R-77 | 11.5 min |
| | J-20 Mighty Dragon | 2 R-60, 6 R-77 | 11.5 min |
| | F-22 Raptor | 4 AIM-9, 6 AIM-120 | 13.5 min |
| | Su-57 Felon | 4 R-60, 6 R-77 | 13.5 min |
| **Interceptor** | F-14 Tomcat | 4 AIM-9, 4 AIM-54 Phoenix | 11.5 min |
| **Multirole** | F/A-18 Hornet | 4 medium bombs, 2 AIM-9, 2 AIM-120 | 10 min |
| | F-16 Fighting Falcon | 2 AGMs, 2 medium bombs, 2 AIM-9, 2 AIM-120 | 10 min |
| | F-2 Viper Zero | 4 AGMs, 2 AIM-9, 2 AIM-120 | 10 min |
| | MiG-29 Fulcrum | 2 AGMs, 2 medium bombs, 2 R-60, 2 R-77 | 10 min |
| | Eurofighter Typhoon | 2 medium bombs, 6 AIM-9, 2 AIM-120 | 13.5 min |
| | JAS 39E Gripen | 2 AGMs, 2 medium bombs, 2 AIM-9, 4 AIM-120 | 13.5 min |
| | F-35A Lightning II | 2 large bombs, 4 AGM-158, 4 AIM-120 | 13.5 min |
| | F-35B Lightning II | 2 medium bombs, 4 AGM-158, 4 AIM-120 | 13.5 min |
| **Strike** | F-4 Phantom II | 6 medium bombs, 4 AIM-9 | 8 min |
| | Su-34 Fullback | 2 AGMs, 4 large bombs, 2 R-60, 2 R-77 | 10 min |
| **Close air support** | A-10 Thunderbolt II | 4 AGMs, 6 medium + 2 large bombs, 32 rockets | 10 min |
| | Su-25 Frogfoot | 4 AGMs, 6 medium + 2 large bombs, 32 rockets | 10 min |
| **Bombers** | F-117 Nighthawk | 8 large bombs (no cannon) | 11.5 min |
| | B-52 Stratofortress | 4 medium + 6 large bombs, 12 CBU-87 cluster bombs (no cannon) | 13.5 min |
| | B-2 Spirit | 16 medium bombs, 2 GBU-57 bunker busters (no cannon) | 15 min |
| **Gunship** | AC-130U Spooky II | Small, medium and large cannon shells, 32 flares | 15 min |
| **Cargo** | C-130 Hercules | 32 flares (unarmed) | 10 min |
| **UAVs** | MQ-9 Reaper | 2 medium bombs, 8 Hellfires (no cannon) | 10 min |
| | X-47B UCAV | 4 medium bombs, 6 AGMs (no cannon) | 10 min |

---

## Boats

**One shared cooldown for both boats.** **WarZone map only.** **No cooldown in Vehicle Mode.**

| Boat | You get | Cooldown |
|---|---|---|
| Rubber boat | — | 5 min |
| Assault speedboat | 128 heavy MG ammo | 10 min |

---

## Skins

Cosmetic only. No cooldown and no map or mode restrictions. Each one sets your player skin through Skin Restorer.

| Theme | Skins |
|---|---|
| Soldiers | Soldier Camo 1–5, Soldier Sand 1–3, Soldier UA |
| Special forces | SpecOps 1–5 |
| Support | Medic, Pilot 1–2 |
| Insurgents | Terrorist 1–3 |
| S.T.A.L.K.E.R. / Metro | Stalker 1–2, Stalker Exo 1–2, Artyom 2033 |
| Metal Gear | Big Boss, Venom Snake |
| Other | DOOM Slayer, TF2 Medic, Chud, Trump, Zeliboba |
