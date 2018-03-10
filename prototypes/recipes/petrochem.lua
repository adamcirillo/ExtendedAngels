local buildingmulti = angelsmods.marathon.buildingmulti
local buildingtime = angelsmods.marathon.buildingtime

angelsmods.functions.RB.build({
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
}
)