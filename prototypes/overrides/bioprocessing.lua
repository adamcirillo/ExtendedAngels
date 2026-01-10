-- Sort bioprocessing buildings into more rows
local bioprocessing_buildings = {
    -- Nauvis
    ["angels-bio-generator-temperate-1"] = "bio-processing-buildings-nauvis-b",
    ["angels-bio-generator-temperate-2"] = "bio-processing-buildings-nauvis-b",
    ["angels-bio-generator-temperate-3"] = "bio-processing-buildings-nauvis-b",
    ["angels-bio-generator-swamp-1"] = "bio-processing-buildings-nauvis-b",
    ["angels-bio-generator-swamp-2"] = "bio-processing-buildings-nauvis-b",
    ["angels-bio-generator-swamp-3"] = "bio-processing-buildings-nauvis-b",
    ["angels-bio-generator-desert-1"] = "bio-processing-buildings-nauvis-b",
    ["angels-bio-generator-desert-2"] = "bio-processing-buildings-nauvis-b",
    ["angels-bio-generator-desert-3"] = "bio-processing-buildings-nauvis-b",
    -- Vegetabilis
    ["angels-desert-farm"] = "bio-processing-buildings-vegetabilis-b",
    ["angels-desert-farm-2"] = "bio-processing-buildings-vegetabilis-b",
    ["angels-desert-farm-3"] = "bio-processing-buildings-vegetabilis-b",
    ["angels-swamp-farm"] = "bio-processing-buildings-vegetabilis-b",
    ["angels-swamp-farm-2"] = "bio-processing-buildings-vegetabilis-b",
    ["angels-swamp-farm-3"] = "bio-processing-buildings-vegetabilis-b",
    ["angels-seed-extractor"] = "bio-processing-buildings-vegetabilis-c",
    ["angels-seed-extractor-2"] = "bio-processing-buildings-vegetabilis-c",
    ["angels-seed-extractor-3"] = "bio-processing-buildings-vegetabilis-c",
    ["angels-composter"] = "bio-processing-buildings-vegetabilis-c",
    ["angels-composter-2"] = "bio-processing-buildings-vegetabilis-c",
    ["angels-composter-3"] = "bio-processing-buildings-vegetabilis-c",
    ["angels-bio-press"] = "bio-processing-buildings-vegetabilis-d",
    ["angels-bio-press-2"] = "bio-processing-buildings-vegetabilis-d",
    ["angels-bio-press-3"] = "bio-processing-buildings-vegetabilis-d",
    ["angels-nutrient-extractor"] = "bio-processing-buildings-vegetabilis-d",
    ["angels-nutrient-extractor-2"] = "bio-processing-buildings-vegetabilis-d",
    ["angels-nutrient-extractor-3"] = "bio-processing-buildings-vegetabilis-d",
    ["angels-bio-processor"] = "bio-processing-buildings-vegetabilis-e",
    ["angels-bio-processor-2"] = "bio-processing-buildings-vegetabilis-e",
    ["angels-bio-processor-3"] = "bio-processing-buildings-vegetabilis-e",
    -- Animalis
    ["angels-bio-refugium-biter"] = "bio-processing-buildings-alien-b",
    ["angels-bio-refugium-biter-2"] = "bio-processing-buildings-alien-b",
    ["angels-bio-refugium-biter-3"] = "bio-processing-buildings-alien-b",
    ["angels-bio-refugium-puffer"] = "bio-processing-buildings-alien-b",
    ["angels-bio-refugium-puffer-2"] = "bio-processing-buildings-alien-b",
    ["angels-bio-refugium-puffer-3"] = "bio-processing-buildings-alien-b",
}

if settings.startup["extangels-adjust-ordering"].value then
    for name, subgroup in pairs(bioprocessing_buildings) do
        local item = data.raw.item[name]
        local entity = data.raw["assembling-machine"][name]
        local recipe = data.raw.recipe[name]

        if item then item.subgroup = subgroup end

        -- Clear entity/recipe subgroups for proper inheritance from item
        if entity then entity.subgroup = nil end
        if recipe then recipe.subgroup = nil end
    end
end
