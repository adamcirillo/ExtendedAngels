data:extend(
{
    {
        type = "technology",
        name = "angels-copper-tungsten-smelting-1",
        icon = "__extendedangels__/graphics/technology/smelting-copper-tungsten.png",
        icon_size = 128,
        prerequisites =
        {
        "angels-tungsten-smelting-1",       
        },
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = "copper-tungsten-smelting-1"
          },
          {
            type = "unlock-recipe",
            recipe = "molten-copper-tungsten-smelting-1"
          },
        },
        unit =
        {
          count = 75,
          ingredients = {
          {"science-pack-1", 1},
          {"science-pack-2", 1},
          {"science-pack-3", 1},
          {"production-science-pack", 1},
          },
          time = 30
        },
        order = "c-a"
    },
    {
      type = "technology",
      name = "angels-copper-tungsten-smelting-2",
      icon = "__extendedangels__/graphics/technology/smelting-copper-tungsten.png",
      icon_size = 128,
      prerequisites =
      {
      "angels-copper-tungsten-smelting-1",       
      },
      effects =
      {
        {
          type = "unlock-recipe",
          recipe = "copper-tungsten-smelting-2"
        },
      },
      unit =
      {
        count = 100,
        ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1},
        {"high-tech-science-pack", 1},
        },
        time = 30
      },
      order = "c-a"
  },
}
)