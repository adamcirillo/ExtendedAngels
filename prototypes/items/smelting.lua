data:extend({
    -- Molten copper tungsten
    {
        type = "fluid",
        name = "angels-liquid-molten-copper-tungsten",
        icons = {{ icon = "__extendedangels__/graphics/icons/molten-copper-tungsten.png", icon_size = 64 }},
        default_temperature = 3422,
        heat_capacity = "0kJ",
        base_color = { r = 152 / 255, g = 74 / 255, b = 58 / 255 },
        flow_color = { r = 152 / 255, g = 74 / 255, b = 58 / 255 },
        max_temperature = 3422,
        pressure_to_speed_ratio = 0.4,
        flow_to_energy_ratio = 0.59,
        auto_barrel = false
    },

    -- Tungsten trioxide
    {
        type = "item",
        name = "angels-solid-tungsten-trioxide",
        icon = "__angelssmeltinggraphics__/graphics/icons/solid-tungsten-oxide.png",
        icon_size = 32,
        subgroup = "angels-tungsten",
        order = "e",
        stack_size = 200
    },

    -- Tungsten hexachloride
    {
        type = "fluid",
        name = "angels-gas-tungsten-hexachloride",
        icon = "__extendedangels__/graphics/icons/gas-tungsten-hexachloride.png",
        icon_size = 32,
        default_temperature = 0,
        heat_capacity = "0kJ",
        base_color = { r = 138 / 255, g = 20 / 255, b = 230 / 255 },
        flow_color = { r = 138 / 255, g = 20 / 255, b = 230 / 255 },
        max_temperature = 0,
        pressure_to_speed_ratio = 0.4,
        flow_to_energy_ratio = 0.59,
    },

    -- Sodium tungstate
    {
        type = "item",
        name = "angels-solid-sodium-tungstate",
        icon = "__extendedangels__/graphics/icons/solid-sodium-tungstate.png",
        icon_size = 32,
        subgroup = "angels-tungsten",
        order = "f",
        stack_size = 200
    },

    -- Tungsten carbide powder mixture
    {
        type = "item",
        name = "angels-powder-tungsten-carbide",
        icon = "__extendedangels__/graphics/icons/powder-tungsten-carbide.png",
        icon_size = 32,
        subgroup = "angels-tungsten-carbide",
        order = "a",
        stack_size = 200
    },

    -- Titanium concrete brick
    {
        type = "item",
        name = "angels-titanium-concrete-brick",
        icon = "__extendedangels__/graphics/icons/brick-titanium.png",
        icon_size = 32,
        subgroup = "angels-stone",
        order = "k",
        stack_size = 1000,
        place_as_tile =
        {
            result = "concrete",
            condition_size = 4,
            condition = {layers = {water_tile = true}},
        }
    },
})
