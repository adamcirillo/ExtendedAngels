-- Initial requires
require("prototypes.functions")
require("prototypes.subgroups")

-- Setup numeral tint for Angel's warehouses if not already available
if mods["angelsaddons-storage"] then
    if not angelsmods.addons.storage.number_tint then
        angelsmods.addons.storage.number_tint = {r = 0.95, g = 0.65, b = 0.25, a = 1}
    end
end

-- Buildings
require("prototypes.buildings.petrochem")
require("prototypes.buildings.bioprocessing")
require("prototypes.buildings.refining")
require("prototypes.buildings.warehouses")

-- Items
require("prototypes.items.petrochem")
require("prototypes.items.smelting")

-- Recipes
require("prototypes.recipes.smelting")

-- Technologies
require("prototypes.technology.petrochem")
require("prototypes.technology.smelting")
require("prototypes.technology.bioprocessing")
require("prototypes.technology.refining")
require("prototypes.technology.warehouses")

-- Ore crusher numeral rework adjustments
if pcall(extangels.validate_numeral_function) then
    data.raw.item["ore-crusher-4"].icons = extangels.numeral_tier({icon = "__angelsrefining__/graphics/icons/ore-crusher-3.png", icon_size = 32}, 4, angelsmods.refining.number_tint)
    data.raw["assembling-machine"]["ore-crusher-4"].icons = extangels.numeral_tier({icon = "__angelsrefining__/graphics/icons/ore-crusher-3.png", icon_size = 32}, 4, angelsmods.refining.number_tint)
end