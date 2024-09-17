local gui_information_updater = require(
    "electrical_voxelcraft:gui_information_updater"
)

function on_open(invid, x, y, z)
    set_current_block(x, y, z, invid)
end

function on_close(invid)
    clear_current_block()
end