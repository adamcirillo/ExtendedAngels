-- For Angel's Extra Warehouses
if mods["angelsaddons-warehouses"] then
	require("prototypes.buildings.warehouses")
	require("prototypes.recipes.warehouses")
	require("prototypes.technology.warehouses-technology")


	if angelsmods.addons.warehouse_icon then
		data.raw["container"]["warehouse-mk2"].scale_info_icons = true
		data.raw["logistic-container"]["warehouse-passive-provider-mk2"].scale_info_icons = true
		data.raw["logistic-container"]["warehouse-active-provider-mk2"].scale_info_icons = true
		data.raw["logistic-container"]["warehouse-storage-mk2"].scale_info_icons = true
    	data.raw["logistic-container"]["warehouse-requester-mk2"].scale_info_icons = true
		data.raw["container"]["warehouse-mk3"].scale_info_icons = true
		data.raw["logistic-container"]["warehouse-passive-provider-mk3"].scale_info_icons = true
		data.raw["logistic-container"]["warehouse-active-provider-mk3"].scale_info_icons = true
		data.raw["logistic-container"]["warehouse-storage-mk3"].scale_info_icons = true
   		data.raw["logistic-container"]["warehouse-requester-mk3"].scale_info_icons = true
    	data.raw["container"]["warehouse-mk4"].scale_info_icons = true
		data.raw["logistic-container"]["warehouse-passive-provider-mk4"].scale_info_icons = true
		data.raw["logistic-container"]["warehouse-active-provider-mk4"].scale_info_icons = true
		data.raw["logistic-container"]["warehouse-storage-mk4"].scale_info_icons = true
		data.raw["logistic-container"]["warehouse-requester-mk4"].scale_info_icons = true
	end
end

-- For Angel's Bio Processing
require("prototypes.buildings.bioprocessing")
require("prototypes.recipes.bioprocessing")
require("prototypes.technology.bioprocessing-technology")

-- For Angel's Petrochem
require("prototypes.buildings.petrochem")
require("prototypes.recipes.petrochem")
require("prototypes.technology.petrochem-technology")

-- For Angel's Refining
require("prototypes.buildings.refining")
require("prototypes.recipes.refining")
require("prototypes.technology.refining-technology")

-- For Changing Technologies
require("prototypes.technology-overrides")

-- For Chaning Recipes
require("prototypes.recipes-overrides")