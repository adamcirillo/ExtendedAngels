-- Recipes
require("prototypes.recipes.bioprocessing")
require("prototypes.recipes.petrochem")
require("prototypes.recipes.refining")
require("prototypes.recipes.warehouses")

-- Overrides
require("prototypes.overrides.bioprocessing")
require("prototypes.overrides.next-upgrades")
require("prototypes.overrides.petrochem")
require("prototypes.overrides.recipes")
require("prototypes.overrides.smelting")
require("prototypes.overrides.technology")
require("prototypes.overrides.warehouses")

-- Add numeral to angels-powder-tungsten as we add a second tier of recipe
data.raw.recipe["angels-powder-tungsten"].icons = extangels.numeral_tier({
  icon = "__angelssmeltinggraphics__/graphics/icons/powder-tungsten.png",
  icon_size = 64,
}, 1, angelsmods.smelting.number_tint)
