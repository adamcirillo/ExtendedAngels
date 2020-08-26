
require("prototypes.subgroups")

-- For Angel's Petrochem
require("prototypes.buildings.petrochem")
require("prototypes.items.petrochem")
require("prototypes.technology.petrochem-technology")

-- For Angel's Smelting
require("prototypes.recipes.smelting")
require("prototypes.items.smelting")
require("prototypes.technology.smelting-technology")

-- For Angel's Bio Processing
require("prototypes.buildings.bioprocessing")
require("prototypes.technology.bioprocessing-technology")

-- For Angel's Refining
require("prototypes.buildings.refining")
require("prototypes.technology.refining-technology")

-- For Angel's Extra Warehouses
if mods["angelsaddons-warehouses"] or mods["angelsaddons-storage"] then
	local tbl = mods["angelsaddons-storage"] and angelsmods.addons.storage or angelsmods.addons.warehouses
    if not tbl.number_tint then
        tbl.number_tint = {r = 0.95, g = 0.65, b = 0.25, a = 1}
    end
    require("prototypes.buildings.warehouses")
    require("prototypes.technology.warehouses-technology")
end

