local OV = angelsmods.functions.OV

OV.add_prereq( "tungsten-alloy-processing", "angels-copper-tungsten-smelting-1" )
OV.disable_recipe({ "copper-tungsten-alloy" })
OV.disable_recipe({ "tungsten-carbide" })
OV.disable_recipe({ "tungsten-carbide-2" })
OV.disable_recipe({ "pellet-tungsten-smelting" })

OV.add_unlock("water-treatment-4", "hydro-plant-3")
OV.add_unlock("angels-advanced-chemistry-4", "advanced-chemical-plant-3")
OV.add_unlock("angels-tungsten-smelting-3", "solid-tungsten-trioxide-smelting")
OV.add_unlock("angels-tungsten-smelting-3", "pellet-tungsten-smelting-2")
OV.add_unlock("angels-tungsten-smelting-3", "solid-sodium-tungstate-smelting")
OV.add_unlock("angels-tungsten-smelting-3", "casting-powder-tungsten-3")
OV.add_unlock("angels-zinc-smelting-2", "powder-zinc")
OV.add_unlock("angels-nitrogen-processing-1", "gas-argon")
OV.add_unlock("angels-nitrogen-processing-3", "angels-air-filter-3")
OV.add_unlock("angels-nitrogen-processing-4","angels-air-filter-4")

if mods["Clowns-Extended-Minerals"] then 
OV.add_unlock("water-washing-3", "washing-plant-3")
end

if mods["Clowns-Processing"] then
    OV.add_unlock("phosphorus-processing-2", "solid-disodium-phosphate")
    OV.add_unlock("phosphorus-processing-2", "solid-tetrasodium-pyrophosphate")
end

if angelsmods.bioprocessing then
    OV.add_unlock("bio-processing-red", "algae-farm-3")
end

if mods["angelsaddons-warehouses"] then
    if data.raw.tool["logistic-science-pack"] then
        bobmods.lib.tech.replace_science_pack("logistic-warehouses-3", "production-science-pack", "logistic-science-pack")
        bobmods.lib.tech.replace_science_pack("logistic-warehouses-4", "production-science-pack", "logistic-science-pack")
    end
end


