local buildingmulti = angelsmods.marathon.buildingmulti
local buildingtime = angelsmods.marathon.buildingtime

angelsmods.functions.RB.build({
--HYDRO PLANT
{
    type = "recipe",
    name = "hydro-plant-3",
	normal =
    {
	  energy_required = 5,
	  enabled = "false",
      ingredients =
      {
		{"hydro-plant-2", 1},
		{"t4-plate", 4},
		{"t4-circuit", 12},
		{"t4-pipe", 16},	
		{"t4-brick", 12},
      },
      result= "hydro-plant-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"hydro-plant-2", 1},
		{"t4-plate", 4 * buildingmulti},
		{"t4-circuit", 12 * buildingmulti},
		{"t4-pipe", 16 * buildingmulti},	
		{"t4-brick", 12 * buildingmulti},
      },
      result= "hydro-plant-3",
    },
    },
	{
    type = "recipe",
    name = "hydro-plant-4",
	normal =
    {
	  energy_required = 5,
	  enabled = "false",
      ingredients =
      {
		{"treatment-2", 1},
		{"t5-plate", 4},
		{"t5-circuit", 12},
		{"t5-pipe", 16},	
		{"t5-brick", 12},
      },
      result= "hydro-plant-4",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"treatment-2", 1},
		{"t5-plate", 4 * buildingmulti},
		{"t5-circuit", 12 * buildingmulti},
		{"t5-pipe", 16 * buildingmulti},	
		{"t5-brick", 12 * buildingmulti},
      },
      result= "hydro-plant-4",
    },
    },
--SALINATION PLANT
	{
    type = "recipe",
    name = "salination-plant-3",
	normal =
    {
	  energy_required = 5,
	  enabled = "false",
      ingredients =
      {
		{"salination-plant-2", 1},
		{"t5-plate", 14},
		{"t5-circuit", 12},
		{"t5-pipe", 8},	
		{"t5-brick", 15},
      },
      result= "salination-plant-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"salination-plant-2", 1},
		{"t5-plate", 14 * buildingmulti},
		{"t5-circuit", 12 * buildingmulti},
		{"t5-pipe", 8 * buildingmulti},	
		{"t5-brick", 15 * buildingmulti},
      },
      result= "salination-plant-3",
    },
    },
--WASHING PLANT
    {
    type = "recipe",
    name = "washing-plant-3",
	normal =
    {
	  energy_required = 5,
	  enabled = "false",
      ingredients =
      {
		{"washing-plant-2", 1},
		{"t3-plate", 4},
		{"t3-circuit", 4},
		{"t3-pipe", 9},	
		{"t3-brick", 5},
      },
      result="washing-plant-3",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"washing-plant-2", 1},
		{"t3-plate", 4 * buildingmulti},
		{"t3-circuit", 4 * buildingmulti},
		{"t3-pipe", 9 * buildingmulti},	
		{"t3-brick", 5 * buildingmulti},
      },
      result="washing-plant-3",
    },
    },
	{
    type = "recipe",
    name = "washing-plant-4",
	normal =
    {
	  energy_required = 5,
	  enabled = "false",
      ingredients =
      {
		{"washing-plant-3", 1},
		{"t4-plate", 4},
		{"t4-circuit", 4},
		{"t4-pipe", 9},	
		{"t4-brick", 5},
      },
      result="washing-plant-4",
    },
    expensive =
    {
	  energy_required = 5 * buildingtime,
	  enabled = "false",
      ingredients =
      {
		{"washing-plant-2", 1},
		{"t4-plate", 4 * buildingmulti},
		{"t4-circuit", 4 * buildingmulti},
		{"t4-pipe", 9 * buildingmulti},	
		{"t4-brick", 5 * buildingmulti},
      },
      result="washing-plant-4",
    },
    },
}
)