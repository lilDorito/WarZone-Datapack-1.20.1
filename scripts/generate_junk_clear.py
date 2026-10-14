#!/usr/bin/env python3

from pathlib import Path

SCRIPT_DIR = Path(__file__).resolve().parent
OUTPUT_FILE = SCRIPT_DIR.parent / "loadouts" / "data" / "loadouts" / "functions" / "extra" / "junk_clear.mcfunction"

ALLOWED_ITEMS = [
    # Vanilla
    "minecraft:cooked_beef",
    "minecraft:dirt",
    "minecraft:netherite_pickaxe",
    "minecraft:obsidian",
    "minecraft:beacon",

    # MCSP vehicles
    "mcsp:typhoon_tricolor_30_spawn_item",
    "mcsp:typhoon_30_spawn_item",
    "mcsp:vdv_snow_30mm_spawn_item",
    "mcsp:vdv_standart_spawn_item",
    "mcsp:vdv_desert_spawn_item",
    "mcsp:vdv_snow_spawn_item",
    "mcsp:humvee_standart_spawn_item",
    "mcsp:humvee_carc_spawn_item",
    "mcsp:humvee_sand_spawn_item",
    "mcsp:humvee_mk19_spawn_item",
    "mcsp:bmd_4_spawn_item",
    "mcsp:bmd_4_camo_spawn_item",
    "mcsp:sprut_spawn_item",
    "mcsp:sprut_camo_spawn_item",
    "mcsp:m3a3_bradley_spawn_item",
    "mcsp:m3a3_bradley_busk_ii_spawn_item",
    "mcsp:m3a3_bradley_busk_iii_spawn_item",
    "mcsp:m3a3_bradley_sand_spawn_item",
    "mcsp:m3a3_bradley_busk_ii_sand_spawn_item",
    "mcsp:m3a3_bradley_busk_iii_sand_spawn_item",
    "mcsp:m1a2_spawn_item",
    "mcsp:m1a2_sep_spawn_item",
    "mcsp:m1a2_sand_spawn_item",
    "mcsp:m1a2_sep_sand_spawn_item",
    "mcsp:ural_green_spawn_item",
    "mcsp:ural_tricolor_spawn_item",
    "mcsp:tos_1a_green_spawn_item",
    "mcsp:tos_1a_tricolor_spawn_item",
    "mcsp:t90a_green_spawn_item",
    "mcsp:t90a_tricolor_spawn_item",
    "mcsp:ztz99a_sand_spawn_item",
    "mcsp:t80u_green_spawn_item",
    "mcsp:t80u_camo_spawn_item",
    "mcsp:t80u_pixel_spawn_item",
    "mcsp:t80u_kantemir_spawn_item",
    "mcsp:t80bv_green_spawn_item",
    "mcsp:t80bv_camo_spawn_item",
    "mcsp:t80bv_pixel_spawn_item",
    "mcsp:t80bv_kantemir_spawn_item",
    "mcsp:zbd04a_green_spawn_item",
    "mcsp:zbd04a_sand_spawn_item",

    # Walkie talkie
    "walkietalkie:netherite_walkietalkie",

    # SuperbWarfare weapons
    "superbwarfare:aa_12",
    "superbwarfare:ak_12",
    "superbwarfare:ak_47",
    "superbwarfare:awm",
    "superbwarfare:sks",
    "superbwarfare:devotion",
    "superbwarfare:glock_18",
    "superbwarfare:hk_416",
    "superbwarfare:insidious",
    "superbwarfare:javelin",
    "superbwarfare:k_98",
    "superbwarfare:m_1911",
    "superbwarfare:m_2_hb",
    "superbwarfare:m_4",
    "superbwarfare:m_60",
    "superbwarfare:m_79",
    "superbwarfare:m_870",
    "superbwarfare:m_98b",
    "superbwarfare:marlin",
    "superbwarfare:minigun",
    "superbwarfare:mk_14",
    "superbwarfare:mosin_nagant",
    "superbwarfare:mp_443",
    "superbwarfare:mp_5",
    "superbwarfare:ntw_20",
    "superbwarfare:qbz_191",
    "superbwarfare:qbz_95",
    "superbwarfare:rpg",
    "superbwarfare:rpk",
    "superbwarfare:sentinel",
    "superbwarfare:svd",
    "superbwarfare:vector",
    "superbwarfare:igla_9k38",
    "superbwarfare:trachelium",
    "superbwarfare:knife",

    # SuperbWarfare consumables
    "superbwarfare:medical_kit",
    "superbwarfare:armor_plate",
    "superbwarfare:large_battery_pack",
    "superbwarfare:vehicle_smoke_ammo",
    "superbwarfare:flying_flare_ammo",

    # SuperbWarfare tools & items
    "superbwarfare:artillery_indicator",
    "superbwarfare:detonator",
    "superbwarfare:defuser",
    "superbwarfare:drone",
    "superbwarfare:monitor",
    "superbwarfare:mortar_deployer",
    "superbwarfare:parachute",
    "superbwarfare:thermal_imaging_goggles",
    "superbwarfare:container",
    "superbwarfare:crowbar",

    # SuperbWarfare mines & grenades
    "superbwarfare:blu_43_mine",
    "superbwarfare:c4_bomb",
    "superbwarfare:claymore_mine",
    "superbwarfare:tripwire_mine",
    "superbwarfare:ptkm_1r",
    "superbwarfare:hand_grenade",
    "superbwarfare:m18_smoke_grenade",
    "superbwarfare:rgo_grenade",
    "superbwarfare:tm_62",

    # Ammo
    "superbwarfare:handgun_ammo",
    "superbwarfare:rifle_ammo",
    "superbwarfare:heavy_ammo",
    "superbwarfare:sniper_ammo",
    "superbwarfare:shotgun_ammo",
    "superbwarfare:javelin_missile",
    "superbwarfare:grenade_40mm",
    "superbwarfare:mortar_shell",
    "superbwarfare:mortar_shell_wp",
    "superbwarfare:mortar_shell_smoke",
    "superbwarfare:rpg_rocket_tbg",
    "superbwarfare:small_shell_ap",
    "superbwarfare:small_shell_he",
    "superbwarfare:small_shell_gs",
    "superbwarfare:small_shell_aa",
    "superbwarfare:medium_shell_ap",
    "superbwarfare:medium_shell_he",
    "superbwarfare:medium_shell_gs",
    "superbwarfare:medium_shell_aa",
    "superbwarfare:large_shell_ap",
    "superbwarfare:large_shell_he",
    "superbwarfare:large_shell_gs",
    "superbwarfare:large_shell_cm",
    "superbwarfare:large_shell_wp",
    "superbwarfare:small_rocket",
    "superbwarfare:medium_rocket_ap",
    "superbwarfare:medium_rocket_he",
    "superbwarfare:medium_rocket_cm",
    "superbwarfare:medium_anti_ground_missile",
    "superbwarfare:large_anti_ground_missile",
    "superbwarfare:medium_anti_air_missile",
    "superbwarfare:small_aerial_bomb",
    "superbwarfare:medium_aerial_bomb",
    "superbwarfare:large_aerial_bomb",
    "mcsp:40mm_explosive",
    "mcsp:mlrs_shells",
    "ashvehicle:cbu87item",
    "ashvehicle:gbu57item",
    "ashvehicle:agm158item",
    "ashvehicle:agm114item",
    "ashvehicle:aim9item",
    "ashvehicle:aim120item",
    "ashvehicle:aim54item",
    "ashvehicle:r60item",
    "ashvehicle:r77item",

    # Armor
    "superbwarfare:ru_chest_6b43",
    "superbwarfare:ru_helmet_6b47",
    "superbwarfare:us_chest_iotv",
    "superbwarfare:us_helmet_pasgt",
    "mcsp:vest_avs",
    "mcsp:opscore_helmet",

    # AirTacticalArsenal
    "ata:iskander",
    "ata:missile_launchpad",
    "ata:missile_terminal",
    "ata:missile_link_cable",
    "ata:recon_uav_launcher",
    "ata:recon_uav_tablet",
    "ata:orlan",
    "ata:strike_uav_launcher",
    "ata:strike_uav_tablet",
    "ata:shahed",
    "ata:shahed_radar",
]

MAIN_SLOTS = list(range(36))
ARMOR_SLOTS = {
    100: "armor.feet",
    101: "armor.legs",
    102: "armor.chest",
    103: "armor.head",
}
OFFHAND_SLOT = -106

def build_line(inv_slot: int, target: str) -> str:
    conditions = "".join(
        f' unless data entity @s Inventory[{{Slot:{inv_slot}b,id:"{item}"}}]'
        for item in ALLOWED_ITEMS
    )
    return f"execute{conditions} run item replace entity @s {target} with air"

def main():
    lines = ["# Auto-generated by generate_junk_clear.py - do not hand-edit, re-run the script instead", ""]

    lines.append("# Main inventory (hotbar + storage)")
    for slot in MAIN_SLOTS:
        lines.append(build_line(slot, f"container.{slot}"))

    lines.append("")
    lines.append("# Armor slots")
    for inv_slot, target in ARMOR_SLOTS.items():
        lines.append(build_line(inv_slot, target))

    lines.append("")
    lines.append("# Offhand")
    lines.append(build_line(OFFHAND_SLOT, "weapon.offhand"))

    lines.append("")
    lines.append('tellraw @s {"text":"[✔] Inventory cleaned!","color":"green"}')
    lines.append("playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1")

    OUTPUT_FILE.write_text("\n".join(lines) + "\n", encoding="utf-8")

    print(f"Wrote {OUTPUT_FILE} ({len(lines)} lines, {len(ALLOWED_ITEMS)} allowed items)")

if __name__ == "__main__":
    main()
