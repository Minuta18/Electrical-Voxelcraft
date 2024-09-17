import os
import json

drops = dict()
hardness = dict()

with open('./electrical-voxelcraft/additional_data/drops.json', 'r') as f:
    drops = json.loads(f.read())

with open('./electrical-voxelcraft/additional_data/hardness.json', 'r') as f:
    hardness = json.loads(f.read())

for filename in os.listdir('./Electrical-Age-Lite-main/blocks'):
    key = 'electrical_age_lite:' + filename.split('.')[0]
    drop = ''
    res_hardness = 10
    if filename.startswith('machine_light'):
        drop = 'electrical_age_lite:machine_light.item'
        res_hardness = 20
    elif filename.startswith('wire_bronze'):
        drop = 'electrical_age_lite:wire_copper'
        res_hardness = 10
    elif filename.startswith('wire_tin'):
        drop = 'electrical_age_lite:wire_tin'
        res_hardness = 10
    elif filename.startswith('wire_copper'):
        drop = 'electrical_age_lite:wire_copper'
        res_hardness = 10
    elif filename.startswith('wire_iron'):
        drop = 'electrical_age_lite:wire_iron'
        res_hardness = 10
    elif filename.startswith('wire_creative'):
        drop = 'electrical_age_lite:wire_creative'
        res_hardness = 10

    if drop != '':
        drops[key] = drop
        hardness[key] = res_hardness

with open('./electrical-voxelcraft/additional_data/drops.json', 'w') as f:
    f.write(json.dumps(drops, indent=4))

with open('./electrical-voxelcraft/additional_data/hardness.json', 'w') as f:
    f.write(json.dumps(hardness, indent=4))