if data.raw.tool["logistic-science-pack"] then
    bobmods.lib.tech.replace_science_pack("logistic-warehouses-3", "production-science-pack", "logistic-science-pack")
    bobmods.lib.tech.replace_science_pack("logistic-warehouses-4", "production-science-pack", "logistic-science-pack")
end

local OV = angelsmods.functions.OV

if angelsmods.bioprocessing then
    OV.add_unlock("bio-processing-red", "algae-farm-3")
end