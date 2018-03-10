data:extend(
{
    {
    type = "technology",
    name = "angels-advanced-gas-processing-2",
    icon = "__angelspetrochem__/graphics/technology/gas-refinery-tech.png",
	icon_size = 128,
	prerequisites =
    {
    "angels-advanced-gas-processing",
    "angels-advanced-chemistry-4"
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "gas-refinery-4"
      },
	},
    unit =
    {
      count = 150,
      ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"high-tech-science-pack", 1},
	  },
      time = 15
    },
    order = "c-a"
    },
}
)