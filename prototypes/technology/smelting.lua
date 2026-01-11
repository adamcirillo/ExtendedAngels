data:extend({
    -- Angels copper tungsten smelting 1
    {
        type = "technology",
        name = "angels-copper-tungsten-smelting-1",
        icon = "__extendedangels__/graphics/technology/copper-tungsten-smelting-and-casting.png",
        icon_size = 256,
        prerequisites = {
            "angels-copper-smelting-1",
            "angels-tungsten-smelting-1",
        },
        effects = {
            {
                type = "unlock-recipe",
                recipe = "angels-copper-tungsten-smelting-1"
            },
            {
                type = "unlock-recipe",
                recipe = "angels-molten-copper-tungsten-smelting-1"
            },
        },
        unit = {
            count = 75,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack",   1 },
                { "chemical-science-pack",   1 },
                { "production-science-pack", 1 },
            },
            time = 30
        },
        order = "c-a"
    },

    -- Angels copper tungsten smelting 2
    {
        type = "technology",
        name = "angels-copper-tungsten-smelting-2",
        icon = "__extendedangels__/graphics/technology/copper-tungsten-smelting-and-casting.png",
        icon_size = 256,
        prerequisites = {
            "angels-copper-tungsten-smelting-1",
            "angels-metallurgy-5",
        },
        effects = {
            {
                type = "unlock-recipe",
                recipe = "angels-copper-tungsten-smelting-2"
            },
        },
        unit = {
            count = 100,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack",   1 },
                { "chemical-science-pack",   1 },
                { "production-science-pack", 1 },
                { "utility-science-pack",    1 },
            },
            time = 30
        },
        order = "c-a"
    },

    -- Angels stone smelting 4
    {
        type = "technology",
        name = "angels-stone-smelting-4",
        icon = "__angelssmeltinggraphics__/graphics/technology/cement-tech.png",
        icon_size = 128,
        upgrade = true,
        prerequisites = {
            "angels-stone-smelting-3",
            "angels-titanium-smelting-1",
            "production-science-pack",
        },
        effects = {
            {
                type = "unlock-recipe",
                recipe = "angels-titanium-concrete-brick"
            },
        },
        unit = {
            count = 100,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack",   1 },
                { "chemical-science-pack",   1 },
                { "production-science-pack", 1 },
            },
            time = 30
        },
        order = "c-a"
    },

    -- Angels tungsten carbide smelting 1
    {
        type = "technology",
        name = "angels-tungsten-carbide-smelting-1",
        icon = "__extendedangels__/graphics/technology/tungsten-carbide-smelting-and-casting-carbide.png",
        icon_size = 256,
        prerequisites = {
            "angels-tungsten-smelting-1",
        },
        effects = {
            {
                type = "unlock-recipe",
                recipe = "angels-tungsten-carbide-smelting-1"
            },
            {
                type = "unlock-recipe",
                recipe = "angels-plate-tungsten-carbide"
            },
        },
        unit = {
            count = 75,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack",   1 },
                { "chemical-science-pack",   1 },
                { "production-science-pack", 1 },
            },
            time = 30
        },
        order = "c-a"
    },

    -- Angels tungsten carbide smelting 2
    {
        type = "technology",
        name = "angels-tungsten-carbide-smelting-2",
        icon = "__extendedangels__/graphics/technology/tungsten-carbide-smelting-and-casting-carbide.png",
        icon_size = 256,
        prerequisites = {
            "angels-tungsten-smelting-2",
            "angels-tungsten-carbide-smelting-1",
        },
        effects = {
            {
                type = "unlock-recipe",
                recipe = "angels-tungsten-carbide-smelting-2"
            },
        },
        unit = {
            count = 100,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack",   1 },
                { "chemical-science-pack",   1 },
                { "production-science-pack", 1 },
                { "utility-science-pack",    1 },
            },
            time = 30
        },
        order = "c-a"
    },

    -- Angels tungsten carbide smelting 3
    {
        type = "technology",
        name = "angels-tungsten-carbide-smelting-3",
        icon = "__extendedangels__/graphics/technology/tungsten-carbide-smelting-and-casting-carbide.png",
        icon_size = 256,
        prerequisites = {
            "angels-tungsten-smelting-3",
            "angels-tungsten-carbide-smelting-2",
        },
        effects = {
            {
                type = "unlock-recipe",
                recipe = "angels-tungsten-carbide-smelting-3"
            },
            {
                type = "unlock-recipe",
                recipe = "angels-solid-tungsten-oxide-smelting-2"
            },
        },
        unit = {
            count = 150,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack",   1 },
                { "chemical-science-pack",   1 },
                { "production-science-pack", 1 },
                { "utility-science-pack",    1 },
            },
            time = 30
        },
        order = "c-a"
    },
})
