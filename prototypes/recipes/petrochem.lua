local buildingmulti = angelsmods.marathon.buildingmulti
local buildingtime = angelsmods.marathon.buildingtime

angelsmods.functions.RB.build({
--ADVANCED GAS REFINERY    
    {
    type = "recipe",
    name = "gas-refinery-4",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"gas-refinery-3", 1},
		{"t5-plate", 10},
		{"t5-circuit", 5},
		{"t5-brick", 10},
		{"t5-pipe", 10},
      },
      result= "gas-refinery-4",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"gas-refinery-3", 1},
		{"t5-plate", 10 * buildingmulti},
		{"t5-circuit", 5 * buildingmulti},
		{"t5-brick", 10 * buildingmulti},
		{"t5-pipe", 10 * buildingmulti},
      },
      result= "gas-refinery-4",
    },
    },
--ADVANCED CHEMICAL PLANT    
{
    type = "recipe",
    name = "advanced-chemical-plant-3",
	normal =
    {
	  energy_required = 5,
	  enabled = false,
      ingredients =
      {
		{"advanced-chemical-plant-2", 1},
		{"t5-plate", 2},
		{"t5-circuit", 4},
		{"t5-brick", 4},
		{"t5-pipe", 12},
      },
      result= "advanced-chemical-plant-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = false,
      ingredients =
      {
		{"advanced-chemical-plant-2", 1},
		{"t5-plate", 2 * buildingmulti},
		{"t5-circuit", 4 * buildingmulti},
		{"t5-brick", 4 * buildingmulti},
		{"t5-pipe", 12 * buildingmulti},
      },
      result= "advanced-chemical-plant-3",
    },
    },
}
)