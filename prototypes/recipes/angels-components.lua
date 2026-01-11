if not (mods["angelsindustries"] and angelsmods.industries.components) then
  return
end

-- Revise the construction block ingredients.
local block_ingredients = {
  ["block-construction-0"] = { new = "stone", old = "stone" },
  ["block-construction-1"] = { new = "stone-brick", old = "stone" },
  ["block-construction-2"] = { new = "angels-clay-brick", old = "stone-brick" },
  ["block-construction-3"] = { new = "concrete-brick", old = "angels-clay-brick" },
  ["block-construction-4"] = { new = "angels-reinforced-concrete-brick", old = "concrete-brick" },
  ["block-construction-5"] = { new = "angels-titanium-concrete-brick", old = "angels-reinforced-concrete-brick" },
}

local function change_construction_block_ingredients()
  for block, list in pairs(block_ingredients) do
    local ingredients = data.raw.recipe[block].ingredients

    if ingredients then
      for n, _ in pairs(ingredients) do
        if ingredients[n].name == list.old then
          ingredients[n].name = list.new
        end
      end
    end
  end
end

-- Shift the construction block ingredients down one tier for sets of recipe ingredients.
local remapped_ingredients = {
  ["block-construction-1"] = "block-construction-0",
  ["block-construction-2"] = "block-construction-1",
  ["block-construction-3"] = "block-construction-2",
  ["block-construction-4"] = "block-construction-3",
  ["block-construction-5"] = "block-construction-4",
  ["angels-titanium-concrete-brick"] = "block-construction-5",
}

local function shift_block_ingredients(ingredients)
  for n, _ in pairs(ingredients) do
    -- If the ingredient has a defined remap, apply it.
    if remapped_ingredients[ingredients[n].name] then
      ingredients[n].name = remapped_ingredients[ingredients[n].name]
    end
  end
end

-- ADD BUILDING BLOCKS TO BUILDINGS
local building_prototypes = {
  "assembling-machine",
  "mining-drill",
  "lab",
  "furnace",
  "offshore-pump",
  "pump",
  "rocket-silo",
  "radar",
  "beacon",
  "boiler",
  "generator",
  "solar-panel",
  "accumulator",
  "reactor",
  "electric-pole",
  "wall",
  "gate",
}

function extangels.replace_construction_materials()
  for _, prototype in pairs(building_prototypes) do
    extangels.shuffle_construction_materials(prototype)
  end
end

-- REPLACE CONSTRUCTION BLOCKS
function extangels.shuffle_construction_materials(prototype)
  for name, _ in pairs(data.raw[prototype]) do
    if data.raw.recipe[name] then
      local recipe = data.raw.recipe[name]
      shift_block_ingredients(recipe.ingredients)
    end
  end
  change_construction_block_ingredients()
end
