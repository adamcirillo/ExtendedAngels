local buildingmulti = angelsmods.marathon.buildingmulti
local buildingtime = angelsmods.marathon.buildingtime

if angelsmods.bioprocessing then

angelsmods.functions.RB.build({
        {
        type = "recipe",
        name = "algae-farm-3",
        normal =
        {
            energy_required = 5,
            enabled = false,
            ingredients =
            {
              {"algae-farm-2", 1},
              {"t3-plate", 2},
              {"t3-circuit", 5},
              {"t3-brick", 5},
              {"t3-pipe", 10},
            },
              result= "algae-farm-3",
            },
            expensive =
            {
              energy_required = 5 * buildingtime,
              enabled = false,
              ingredients =
              {
                {"algae-farm-2", 1},
                {"t3-plate", 10 * buildingmulti},
                {"t3-circuit", 5 * buildingmulti},
                {"t3-brick", 5 * buildingmulti},
                {"t3-pipe", 10 * buildingmulti},
              },
              result= "algae-farm-3",
            },
           },
           {
            type = "recipe",
            name = "algae-farm-4",
            normal =
            {
                energy_required = 5,
                enabled = false,
                ingredients =
                {
                  {"algae-farm-3", 1},
                  {"t4-plate", 2},
                  {"t4-circuit", 5},
                  {"t4-brick", 5},
                  {"t4-pipe", 10},
                },
                  result= "algae-farm-4",
                },
                expensive =
                {
                  energy_required = 5 * buildingtime,
                  enabled = false,
                  ingredients =
                  {
                    {"algae-farm-3", 1},
                    {"t4-plate", 10 * buildingmulti},
                    {"t4-circuit", 5 * buildingmulti},
                    {"t4-brick", 5 * buildingmulti},
                    {"t4-pipe", 10 * buildingmulti},
                  },
                  result= "algae-farm-4",
                },
               },
    }
    )

  end