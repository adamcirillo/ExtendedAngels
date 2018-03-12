data:extend(
{
    {
        type = "recipe",
        name = "pellet-tungsten-smelting-2",
        category = "chemical-smelting",
        subgroup = "angels-tungsten",
        energy_required = 8,
        enabled = "false",
        ingredients ={
            {type="item", name="solid-salt", amount=50},
            {type="item", name="solid-tungsten-oxide", amount=12},
            {type="item", name="solid-sodium-floride", amount=6},                          
        },
        results=
        {
            {type="item", name="solid-sodium-tungstate", amount=12},
        },
            icon_size = 32,
            order = "i",
        },

    {
        type = "recipe",
        name = "solid-sodium-tungstate-smelting",
        category = "blast-smelting",
        subgroup = "angels-tungsten",
        energy_required = 4,
        enabled = "false",
        ingredients ={
          {type="item", name="solid-sodium-tungstate", amount=12},
          {type="item", name="pellet-manganese", amount=12},
        },
        results=
        {
          {type="item", name="powder-tungsten", amount=24},
        },
    },
    
    {
        type = "recipe",
        name = "powder-zinc",
        category = "advanced-crafting",
        subgroup = "angels-zinc-casting",
        energy_required = 0.5,
        enabled = "false",
        ingredients ={
          {type="item", name="ingot-zinc", amount=1},
        },
        results=
        {
          {type="item", name="powder-zinc", amount=1},
        },
        icon_size = 32,
        order = "b",
    },    
    
    {
        type = "recipe",
        name = "casting-powder-tungsten-3",
        category = "powder-mixing",
        subgroup = "angels-tungsten-casting",
        energy_required = 4,
        enabled = "false",
        ingredients ={
          {type="item", name="powder-tungsten", amount=12},
          {type="item", name="powder-zinc", amount=12},
        },
        results=
        {
          {type="item", name="casting-powder-tungsten", amount=24},
        },
        icon_size = 32,
        order = "i",
    },     

    {
        type = "recipe",
        name = "copper-tungsten-smelting-1",
        category = "chemical-smelting",
	    subgroup = "angels-copper-tungsten",
        energy_required = 8,
	    enabled = "false",
        ingredients ={
            {type="item", name="ingot-copper", amount=16},
            {type="item", name="powder-tungsten", amount=12},
            {type="fluid", name="gas-hydrogen", amount=60},
	    },
        results=
        {
            {type="fluid", name="liquid-molten-copper-tungsten", amount=120},
        },
	        icon_size = 32,
            order = "ac",
        },

    {
        type = "recipe",
        name = "molten-copper-tungsten-smelting-1",
        category = "casting",
        subgroup = "angels-copper-tungsten-casting",
        energy_required = 8,
        enabled = "false",
        ingredients ={
          {type="fluid", name="liquid-molten-copper-tungsten", amount=40},                
        },
        results=
        {
          {type="item", name="copper-tungsten-alloy", amount=4},
        },
        icon_size = 32,
        order = "ac",
    },

    {
        type = "recipe",
        name = "copper-tungsten-smelting-2",
        category = "chemical-smelting",
        subgroup = "angels-copper-tungsten",
        energy_required = 8,
        enabled = "false",
        ingredients ={
            {type="item", name="ingot-copper", amount=8},
            {type="item", name="ingot-silver", amount=8},
            {type="item", name="powder-tungsten", amount=12},
            {type="fluid", name="gas-hydrogen", amount=60},
        },
        results=
        {
            {type="fluid", name="liquid-molten-copper-tungsten", amount=120},
        },
            icon_size = 32,
            order = "ad",
        },
        {
            type = "recipe",
            name = "angels-titanium-concrete-brick",
            category = "crafting-with-fluid",
            subgroup = "angels-stone-casting",
            energy_required = 4,
            enabled = "false",
            ingredients ={
              {type="fluid", name="liquid-concrete", amount=40},
              {type="item", name="angels-plate-titanium", amount=4},
            },
            results=
            {
              {type="item", name="titanium-concrete-brick", amount=4},
            },
            icon_size = 32,
            order = "j",
            },

            {
                type = "recipe",
                name = "molten-copper-tungsten-smelting-1",
                category = "casting",
                subgroup = "angels-copper-tungsten-casting",
                energy_required = 8,
                enabled = "false",
                ingredients ={
                  {type="fluid", name="liquid-molten-copper-tungsten", amount=40},                
                },
                results=
                {
                  {type="item", name="copper-tungsten-alloy", amount=4},
                },
                icon_size = 32,
                order = "ac",
                },
            

            }
)

if mods["Clowns-Processing"] then 
    bobmods.lib.recipe.add_ingredient("pellet-tungsten-smelting-2", {"solid-tetrasodium-pyrophosphate", 1})
end