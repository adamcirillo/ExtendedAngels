-- Remove recipes
local recipe_list = {
  "angels-pellet-tungsten-smelting",
  "bob-tungsten-carbide",
  "bob-tungsten-carbide-2",
  "bob-copper-tungsten-alloy",
}

for _, recipe in pairs(recipe_list) do
  data.raw.recipe[recipe] = nil
end