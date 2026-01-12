local OV = angelsmods.functions.OV

OV.add_prereq("bob-tungsten-alloy-processing", "angels-copper-tungsten-smelting-1")

OV.add_unlock("angels-advanced-chemistry-5", "angels-advanced-chemical-plant-3")
OV.add_unlock("angels-tungsten-smelting-3", "angels-solid-tungsten-trioxide-smelting")
OV.add_unlock("angels-tungsten-smelting-3", "angels-pellet-tungsten-smelting-2")
OV.add_unlock("angels-tungsten-smelting-3", "angels-solid-sodium-tungstate-smelting")
OV.add_unlock("angels-tungsten-smelting-3", "angels-casting-powder-tungsten-3")
OV.add_unlock("angels-zinc-smelting-2", "angels-powder-zinc")
OV.add_unlock("angels-nitrogen-processing-1", "angels-gas-argon")
OV.add_unlock("angels-advanced-chemistry-4", "angels-air-filter-4")
OV.add_prereq("angels-tungsten-smelting-3", "angels-manganese-smelting-3")
OV.add_prereq("angels-tungsten-smelting-3", "angels-zinc-smelting-2")
OV.add_prereq("angels-tungsten-smelting-3", "angels-sodium-processing-3")

OV.add_unlock("angels-advanced-ore-refining-3", "angels-ore-crusher-4")
OV.add_unlock("angels-advanced-ore-refining-4", "angels-ore-floatation-cell-4")
OV.add_unlock("angels-water-treatment-4", "angels-hydro-plant-4")

if mods["boblogistics"] then
  OV.remove_prereq("bob-repair-pack-5", "bob-tungsten-alloy-processing")
  OV.remove_prereq("bob-robots-3", "bob-tungsten-alloy-processing")
  OV.add_prereq("bob-repair-pack-5", "angels-tungsten-carbide-smelting-1")
  OV.add_prereq("bob-robots-3", "angels-tungsten-carbide-smelting-1")
end

if mods["bobrevamp"] then
  OV.remove_prereq("bob-heat-shield", "bob-tungsten-alloy-processing")
  OV.add_prereq("bob-heat-shield", "angels-tungsten-carbide-smelting-1")
end

if mods["bobwarfare"] then
  OV.remove_prereq("bob-tankotron", "bob-tungsten-alloy-processing")
  OV.add_prereq("bob-tankotron", "angels-tungsten-carbide-smelting-1")
end

if mods["Clowns-Extended-Minerals"] then
  OV.add_unlock("angels-water-washing-3", "angels-washing-plant-3")
end

if mods["Clowns-Processing"] then
  OV.add_unlock("angels-phosphorus-processing-2", "angels-solid-disodium-phosphate")
  OV.add_unlock("angels-phosphorus-processing-2", "angels-solid-tetrasodium-pyrophosphate")
  OV.add_unlock("angels-water-treatment-5", "angels-salination-plant-3")
end

if angelsmods.bioprocessing then
  OV.add_unlock("angels-bio-arboretum-2", "angels-bio-generator-temperate-2")
  OV.add_unlock("angels-bio-arboretum-2", "angels-bio-generator-swamp-2")
  OV.add_unlock("angels-bio-arboretum-2", "angels-bio-generator-desert-2")
  OV.add_unlock("angels-bio-arboretum-2", "angels-bio-arboretum-2")
  OV.add_unlock("angels-bio-arboretum-3", "angels-bio-generator-temperate-3")
  OV.add_unlock("angels-bio-arboretum-3", "angels-bio-generator-swamp-3")
  OV.add_unlock("angels-bio-arboretum-3", "angels-bio-generator-desert-3")
  OV.add_unlock("angels-bio-arboretum-3", "angels-bio-arboretum-3")
  OV.add_unlock("angels-bio-refugium-butchery-2", "angels-bio-butchery-2")
  OV.add_unlock("angels-bio-refugium-puffer-4", "angels-bio-refugium-puffer-2")
  OV.add_unlock("angels-bio-refugium-puffer-4", "angels-bio-refugium-puffer-3")
  OV.add_unlock("angels-bio-refugium-biter-2", "angels-bio-refugium-biter-2")
  OV.add_unlock("angels-bio-refugium-biter-3", "angels-bio-refugium-biter-3")
  OV.add_unlock("angels-bio-farm-2", "angels-crop-farm-2")
  OV.add_unlock("angels-bio-farm-2", "angels-composter-2")
  OV.add_unlock("angels-bio-farm-2", "angels-bio-processor-2")
  OV.add_unlock("angels-bio-pressing-2", "angels-bio-press-2")
  OV.add_unlock("angels-bio-pressing-2", "angels-bio-press-3")
  OV.add_unlock("angels-gardens-2", "angels-seed-extractor-2")
  OV.add_unlock("angels-gardens-3", "angels-seed-extractor-3")
end

if mods["angelsaddons-storage"] then
  if data.raw.tool["advanced-logistic-science-pack"] then
    bobmods.lib.tech.replace_science_pack(
      "angels-logistic-warehouses-3",
      "production-science-pack",
      "advanced-logistic-science-pack"
    )
    bobmods.lib.tech.replace_science_pack(
      "angels-logistic-warehouses-4",
      "production-science-pack",
      "advanced-logistic-science-pack"
    )
    bobmods.lib.tech.replace_science_pack(
      "angels-warehouses-4",
      "production-science-pack",
      "advanced-logistic-science-pack"
    )
  end
end
