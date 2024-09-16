local blocks_list = require("electrical_voxelcraft:blocks_list")

function on_placed(x, y, z, plid)
    local block_name = block.name(block.get(x,y,z))
    set_block(x, y, z, block_name)
    set_block_data_pattern(x, y, z, "machine")
    local data = get_block_data(x,y,z)
    data.max_process_time = 0
    data.energy_bank_max_value = 4 --хардкод
    set_block_whole_data(x,y,z,data)
end

function on_broken(x, y, z)
    clear_block(x,y,z)
end