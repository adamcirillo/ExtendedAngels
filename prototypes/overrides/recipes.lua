-- Strip out recipe order setting so that inheritance works properly
local bioprocessing_recipes = {
    "angels-algae-farm",
    "angels-algae-farm-2",
    "angels-algae-farm-3",
    "angels-algae-farm-4",
    "angels-bio-arboretum-1",
    "angels-bio-generator-temperate-1",
    "angels-bio-generator-swamp-1",
    "angels-bio-generator-desert-1",
    "angels-bio-press",
    "angels-bio-processor",
    "angels-bio-butchery",
    "angels-composter",
    "angels-crop-farm",
    "angels-temperate-farm",
    "angels-swamp-farm",
    "angels-desert-farm",
    "angels-bio-hatchery",
    "angels-nutrient-extractor",
    "angels-bio-refugium-fish",
    "angels-bio-refugium-puffer",
    "angels-bio-refugium-biter",
    "angels-seed-extractor",
}

for _, name in pairs(bioprocessing_recipes) do
    local recipe = data.raw.recipe[name]
    if recipe then recipe.order = nil end
end
