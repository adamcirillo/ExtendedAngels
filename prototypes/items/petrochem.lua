data:extend(
{
    {
        type = "item",
        name = "solid-sodium-floride",
        icon = "__extendedangels__/graphics/icons/solid-sodium-floride.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "petrochem-sodium",
        order = "j",
        stack_size = 200
      },
      
    }
)


if mods["Clowns-Processing"] then 

    data:extend(
        {
            {
                type = "item",
                name = "solid-disodium-phosphate",
                icon = "__Clowns-Processing__/graphics/icons/solid-white-phosphorus.png",
                icon_size = 32,
                flags = {"goes-to-main-inventory"},
                subgroup = "petrochem-sodium",
                order = "k",
                stack_size = 200

            },

            {
                type = "item",
                name = "solid-tetrasodium-pyrophosphate",
                icon = "__Clowns-Processing__/graphics/icons/solid-white-phosphorus.png",
                icon_size = 32,
                flags = {"goes-to-main-inventory"},
                subgroup = "petrochem-sodium",
                order = "l",
                stack_size = 200
    
            },
        }
    )
end