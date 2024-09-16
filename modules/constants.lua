local constants = json.parse(file.read(
	"electrical_voxelcraft:modules/constants.json"
))

function get_constants()
	return constants
end