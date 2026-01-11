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

--Tungsten powder
data.raw.recipe["angels-powder-tungsten"].icons = extangels.numeral_tier({ icon = "__angelssmeltinggraphics__/graphics/icons/powder-tungsten.png", icon_size = 64 }, 1, angelsmods.smelting.number_tint)

-- Tungsten carbide powder
data.raw.item["angels-powder-tungsten-carbide"].icons = {{ icon = "__extendedangels__/graphics/icons/powder-tungsten-carbide.png", icon_size = 64 }}
data.raw.recipe["angels-tungsten-carbide-smelting-1"].icons = extangels.numeral_tier({ icon = "__extendedangels__/graphics/icons/powder-tungsten-carbide.png", icon_size = 64 }, 1, angelsmods.smelting.number_tint)
data.raw.recipe["angels-tungsten-carbide-smelting-2"].icons = extangels.numeral_tier({ icon = "__extendedangels__/graphics/icons/powder-tungsten-carbide.png", icon_size = 64 }, 2, angelsmods.smelting.number_tint)
data.raw.recipe["angels-tungsten-carbide-smelting-3"].icons = extangels.numeral_tier({ icon = "__extendedangels__/graphics/icons/powder-tungsten-carbide.png", icon_size = 64 }, 3, angelsmods.smelting.number_tint)
data.raw.technology["angels-tungsten-carbide-smelting-1"].icons = {{ icon = "__extendedangels__/graphics/technology/tungsten-carbide-smelting-and-casting.png", icon_size = 256 }}
data.raw.technology["angels-tungsten-carbide-smelting-2"].icons = {{ icon = "__extendedangels__/graphics/technology/tungsten-carbide-smelting-and-casting.png", icon_size = 256 }}
data.raw.technology["angels-tungsten-carbide-smelting-3"].icons = {{ icon = "__extendedangels__/graphics/technology/tungsten-carbide-smelting-and-casting.png", icon_size = 256 }}

-- Molten copper tungsten
data.raw.fluid["angels-liquid-molten-copper-tungsten"].icons = {{ icon = "__extendedangels__/graphics/icons/liquid-molten-copper-tungsten.png", icon_size = 64 }}
data.raw.recipe["angels-copper-tungsten-smelting-1"].icons = extangels.numeral_tier({ icon = "__extendedangels__/graphics/icons/liquid-molten-copper-tungsten.png", icon_size = 64 }, 1, angelsmods.smelting.number_tint)
data.raw.recipe["angels-copper-tungsten-smelting-2"].icons = extangels.numeral_tier({ icon = "__extendedangels__/graphics/icons/liquid-molten-copper-tungsten.png", icon_size = 64 }, 2, angelsmods.smelting.number_tint)
data.raw.technology["angels-copper-tungsten-smelting-1"].icons = {{ icon = "__extendedangels__/graphics/technology/copper-tungsten-smelting-and-casting.png", icon_size = 256 }}
data.raw.technology["angels-copper-tungsten-smelting-2"].icons = {{ icon = "__extendedangels__/graphics/technology/copper-tungsten-smelting-and-casting.png", icon_size = 256 }}
