require "voxelcraft:crafting/check_craft"

crafting.add_craft(function (slot_list)
    if slot_list[1][1] == "electrical_voxelcraft:copper_ore.item" then
        return {"electrical_age_lite:ingot_copper", 1}
    end
    return nil
end, "voxelcraft:furnace")

crafting.add_craft(function (slot_list)
    if slot_list[1][1] == "electrical_voxelcraft:tin_ore.item" then
        return {"electrical_age_lite:ingot_tin", 1}
    end
    return nil
end, "voxelcraft:furnace")

crafting.add_crafting_table_craft({
    "core:empty", "core:empty", "core:empty",
    "core:empty", "electrical_age_lite:block_copper.item", "core:empty",
    "core:empty", "core:empty", "core:empty",
}, {"electrical_age_lite:ingot_copper", 9}, "voxelcraft:crafting_table")

crafting.add_crafting_table_craft({
    "core:empty", "core:empty", "core:empty",
    "core:empty", "electrical_age_lite:block_tin.item", "core:empty",
    "core:empty", "core:empty", "core:empty",
}, {"electrical_age_lite:ingot_tin", 9}, "voxelcraft:crafting_table")

crafting.add_crafting_table_craft({
    "core:empty", "core:empty", "core:empty",
    "core:empty", "electrical_age_lite:block_iron.item", "core:empty",
    "core:empty", "core:empty", "core:empty",
}, {"voxelcraft:iron", 9}, "voxelcraft:crafting_table")

crafting.add_crafting_table_craft({
    "electrical_age_lite:ingot_copper", "electrical_age_lite:ingot_copper", "electrical_age_lite:ingot_copper",
    "electrical_age_lite:ingot_copper", "electrical_age_lite:ingot_copper", "electrical_age_lite:ingot_copper",
    "electrical_age_lite:ingot_copper", "electrical_age_lite:ingot_copper", "electrical_age_lite:ingot_copper",
}, {"electrical_age_lite:block_copper.item", 1}, "voxelcraft:crafting_table")

crafting.add_crafting_table_craft({
    "electrical_age_lite:ingot_tin", "electrical_age_lite:ingot_tin", "electrical_age_lite:ingot_tin",
    "electrical_age_lite:ingot_tin", "electrical_age_lite:ingot_tin", "electrical_age_lite:ingot_tin",
    "electrical_age_lite:ingot_tin", "electrical_age_lite:ingot_tin", "electrical_age_lite:ingot_tin",
}, {"electrical_age_lite:block_tin.item", 1}, "voxelcraft:crafting_table")

crafting.add_crafting_table_craft({
    "voxelcraft:iron", "voxelcraft:iron", "voxelcraft:iron",
    "voxelcraft:iron", "voxelcraft:iron", "voxelcraft:iron",
    "voxelcraft:iron", "voxelcraft:iron", "voxelcraft:iron",
}, {"electrical_age_lite:block_iron.item", 1}, "voxelcraft:crafting_table")

crafting.add_crafting_table_craft({
    "voxelcraft:iron", "electrical_voxelcraft:redstone", "voxelcraft:iron",
    "electrical_voxelcraft:redstone", "base:glass.item", "electrical_voxelcraft:redstone",
    "voxelcraft:iron", "electrical_voxelcraft:redstone", "voxelcraft:iron",
}, {"electrical_age_lite:block_machine_case.item", 1}, "voxelcraft:crafting_table")
