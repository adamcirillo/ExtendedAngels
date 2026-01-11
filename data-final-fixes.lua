-- Remove recipes and clear module limitations
local recipe_list = {
  "angels-pellet-tungsten-smelting",
  "bob-tungsten-carbide",
  "bob-tungsten-carbide-2",
  "bob-copper-tungsten-alloy",
}

for _, recipe in pairs(recipe_list) do
  data.raw.recipe[recipe] = nil

  for _, module in pairs(data.raw.module) do
    if module.limitation then
      for j, limit in pairs(module.limitation) do
        if limit == recipe then
          table.remove(module.limitation, j)
          break
        end
      end
    end
  end
end

-- Component/Tech overhaul recipe corrections
local previous_building = {
  "angels-algae-farm-5",
  "angels-bio-generator-temperate-2",
  "angels-bio-generator-temperate-3",
  "angels-bio-generator-swamp-2",
  "angels-bio-generator-swamp-3",
  "angels-bio-generator-desert-2",
  "angels-bio-generator-desert-3",
  "angels-bio-arboretum-2",
  "angels-bio-arboretum-3",
  "angels-advanced-chemical-plant-3",
  "angels-air-filter-4",
  "angels-hydro-plant-4",
  "angels-salination-plant-3",
  "angels-washing-plant-3",
  "angels-washing-plant-4",
  "angels-ore-crusher-4",
  "angels-ore-floatation-cell-4",
  "angels-ore-leaching-plant-4",
  "angels-ore-refinery-3",
  "angels-bio-press-2",
  "angels-bio-press-3",
  "angels-bio-processor-2",
  "angels-bio-processor-3",
  "angels-bio-butchery-2",
  "angels-bio-butchery-3",
  "angels-composter-2",
  "angels-composter-3",
  "angels-crop-farm-2",
  "angels-crop-farm-3",
  "angels-temperate-farm-2",
  "angels-temperate-farm-3",
  "angels-desert-farm-2",
  "angels-desert-farm-3",
  "angels-swamp-farm-2",
  "angels-swamp-farm-3",
  "angels-bio-hatchery-2",
  "angels-bio-hatchery-3",
  "angels-nutrient-extractor-2",
  "angels-nutrient-extractor-3",
  "angels-bio-refugium-fish-2",
  "angels-bio-refugium-fish-3",
  "angels-bio-refugium-puffer-2",
  "angels-bio-refugium-puffer-3",
  "angels-bio-refugium-biter-2",
  "angels-bio-refugium-biter-3",
  "angels-seed-extractor-2",
  "angels-seed-extractor-3",
}

require("prototypes.recipes.angels-components")

if mods["angelsindustries"] then
  if angelsmods.industries.components then
    local OV = angelsmods.functions.OV

    extangels.replace_construction_materials()
    OV.execute()

    for _, n in pairs(previous_building) do
      table.remove(data.raw["recipe"][n]["normal"].ingredients, 1)
      table.remove(data.raw["recipe"][n]["expensive"].ingredients, 1)
    end

    if settings.startup["angels-return-ingredients"].value then
      if not extangels.migration.is_newer_version("0.14.13", mods["angelsindustries"]) then
        angelsmods.functions.AI.add_minable_results()
      else
        add_minable_results()
      end
      OV.execute()
    end
  end
end
