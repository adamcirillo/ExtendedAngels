if not mods["angelsaddons-storage"] then return end

-- INVENTORY SIZE CORRECTIONS
-- Standard
local inventory_warehouse_1 = 1728
local inventory_warehouse_2 = 3072
local inventory_warehouse_3 = 4416
local inventory_warehouse_4 = 6035

-- Logistics
local inventory_logistic_1 = 1900
local inventory_logistic_2 = 3378
local inventory_logistic_3 = 4856
local inventory_logistic_4 = 6336

-- Override the inventory size of the standard warehouses
if data.raw["container"]["angels-warehouse"] then
    data.raw["container"]["angels-warehouse"].inventory_size = inventory_warehouse_1
end

if data.raw["logistic-container"]["angels-warehouse-passive-provider"] then
    data.raw["logistic-container"]["angels-warehouse-passive-provider"].inventory_size = inventory_logistic_1
end

if data.raw["logistic-container"]["angels-warehouse-active-provider"] then
    data.raw["logistic-container"]["angels-warehouse-active-provider"].inventory_size = inventory_logistic_1
end

if data.raw["logistic-container"]["angels-warehouse-storage"] then
    data.raw["logistic-container"]["angels-warehouse-storage"].inventory_size = inventory_logistic_1
end

if data.raw["logistic-container"]["angels-warehouse-requester"] then
    data.raw["logistic-container"]["angels-warehouse-requester"].inventory_size = inventory_logistic_1
end

if data.raw["logistic-container"]["angels-warehouse-buffer"] then
    data.raw["logistic-container"]["angels-warehouse-buffer"].inventory_size = inventory_logistic_1
end

data:extend({
    -- STANDARD WAREHOUSES
    -- Warehouse 2
    {
        type = "item",
        name = "warehouse-mk2",
        icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse.png", icon_size = 32}, 2, angelsmods.addons.storage.number_tint),
        subgroup = "angels-warehouses-2",
        order = "b[warehouse-mk2]",
        place_result = "warehouse-mk2",
        stack_size = 10,
    },

    util.merge{data.raw["container"]["angels-warehouse"], {
        name = "warehouse-mk2",
        minable = {result = "warehouse-mk2"},
        next_upgrade = "warehouse-mk3",
        inventory_size = inventory_warehouse_2,
        subgroup = "angels-warehouses-2",
    }},

    -- Warehouse 3
    {
        type = "item",
        name = "warehouse-mk3",
        icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse.png", icon_size = 32}, 3, angelsmods.addons.storage.number_tint),
        subgroup = "angels-warehouses-3",
        order = "b[warehouse-mk3]",
        place_result = "warehouse-mk3",
        stack_size = 10,
    },

    util.merge{data.raw["container"]["angels-warehouse"], {
        name = "warehouse-mk3",
        minable = {result = "warehouse-mk3"},
        next_upgrade = "warehouse-mk4",
        inventory_size = inventory_warehouse_3,
        subgroup = "angels-warehouses-3",
    }},

    -- Warehouse 4
    {
        type = "item",
        name = "warehouse-mk4",
        icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse.png", icon_size = 32}, 4, angelsmods.addons.storage.number_tint),
        subgroup = "angels-warehouses-4",
        order = "b[warehouse-mk4]",
        place_result = "warehouse-mk4",
        stack_size = 10,
    },

    util.merge{data.raw["container"]["angels-warehouse"], {
        name = "warehouse-mk4",
        minable = {result = "warehouse-mk4"},
        inventory_size = inventory_warehouse_4,
        subgroup = "angels-warehouses-4",
    }},

    -- LOGISTIC WAREHOUSES
    -- Warehouse passive provider 2
    {
        type = "item",
        name = "warehouse-passive-provider-mk2",
        icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-pprovider.png", icon_size = 32 }, 2, angelsmods.addons.storage.number_tint),
        subgroup = "angels-warehouses-2",
        order = "b[warehouse-passive-provider-mk2]",
        place_result = "warehouse-passive-provider-mk2",
        stack_size = 10,
    },

    util.merge{data.raw["logistic-container"]["angels-warehouse-passive-provider"], {
        name = "warehouse-passive-provider-mk2",
        minable = {result = "warehouse-passive-provider-mk2"},
        next_upgrade = "warehouse-passive-provider-mk3",
        inventory_size = inventory_logistic_2,
        subgroup = "angels-warehouses-2",
    }},

    -- Warehouse passive provider 3
    {
        type = "item",
        name = "warehouse-passive-provider-mk3",
        icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-pprovider.png", icon_size = 32}, 3, angelsmods.addons.storage.number_tint),
        subgroup = "angels-warehouses-3",
        order = "b[warehouse-passive-provider-mk3]",
        place_result = "warehouse-passive-provider-mk3",
        stack_size = 10,
    },

    util.merge{data.raw["logistic-container"]["angels-warehouse-passive-provider"], {
        name = "warehouse-passive-provider-mk3",
        minable = {result = "warehouse-passive-provider-mk3"},
        next_upgrade = "warehouse-passive-provider-mk4",
        inventory_size = inventory_logistic_3,
        subgroup = "angels-warehouses-3",
    }},

    -- Warehouse passive provider 4
    {
        type = "item",
        name = "warehouse-passive-provider-mk4",
        icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-pprovider.png", icon_size = 32}, 4, angelsmods.addons.storage.number_tint),
        subgroup = "angels-warehouses-4",
        order = "a[warehouse-passive-provider-mk4]",
        place_result = "warehouse-passive-provider-mk4",
        stack_size = 10,
    },

    util.merge{data.raw["logistic-container"]["angels-warehouse-passive-provider"], {
        name = "warehouse-passive-provider-mk4",
        minable = {result = "warehouse-passive-provider-mk4"},
        inventory_size = inventory_logistic_4,
        subgroup = "angels-warehouses-4",
    }},

    -- Warehouse active provider 2
    {
        type = "item",
        name = "warehouse-active-provider-mk2",
        icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-aprovider.png", icon_size = 32}, 2, angelsmods.addons.storage.number_tint),
        subgroup = "angels-warehouses-2",
        order = "c[warehouse-active-provider-mk2]",
        place_result = "warehouse-active-provider-mk2",
        stack_size = 10,
    },

    util.merge{data.raw["logistic-container"]["angels-warehouse-active-provider"], {
        name = "warehouse-active-provider-mk2",
        minable = {result = "warehouse-active-provider-mk2"},
        next_upgrade = "warehouse-active-provider-mk3",
        inventory_size = inventory_logistic_2,
        subgroup = "angels-warehouses-2",
    }},

    -- Warehouse active provider 3
    {
        type = "item",
        name = "warehouse-active-provider-mk3",
        icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-aprovider.png", icon_size = 32}, 3, angelsmods.addons.storage.number_tint),
        subgroup = "angels-warehouses-3",
        order = "c[warehouse-active-provider-mk3]",
        place_result = "warehouse-active-provider-mk3",
        stack_size = 10,
    },

    util.merge{data.raw["logistic-container"]["angels-warehouse-active-provider"], {
        name = "warehouse-active-provider-mk3",
        minable = {result = "warehouse-active-provider-mk3"},
        next_upgrade = "warehouse-active-provider-mk4",
        inventory_size = inventory_logistic_3,
        subgroup = "angels-warehouses-3",
    }},

    -- Warehouse active provider 4
    {
        type = "item",
        name = "warehouse-active-provider-mk4",
        icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-aprovider.png", icon_size = 32}, 4, angelsmods.addons.storage.number_tint),
        subgroup = "angels-warehouses-4",
        order = "b[warehouse-active-provider-mk4]",
        place_result = "warehouse-active-provider-mk4",
        stack_size = 10,
    },

    util.merge{data.raw["logistic-container"]["angels-warehouse-active-provider"], {
        name = "warehouse-active-provider-mk4",
        minable = {result = "warehouse-active-provider-mk4"},
        inventory_size = inventory_logistic_4,
        subgroup = "angels-warehouses-4",
    }},

    -- Warehouse storage 2
    {
        type = "item",
        name = "warehouse-storage-mk2",
        icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-storage.png", icon_size = 32}, 2, angelsmods.addons.storage.number_tint),
        subgroup = "angels-warehouses-2",
        order = "d[warehouse-storage-mk2]",
        place_result = "warehouse-storage-mk2",
        stack_size = 10,
    },

    util.merge{data.raw["logistic-container"]["angels-warehouse-storage"], {
        name = "warehouse-storage-mk2",
        minable = {result = "warehouse-storage-mk2"},
        next_upgrade = "warehouse-storage-mk3",
        inventory_size = inventory_logistic_2,
        subgroup = "angels-warehouses-2",
    }},

    -- Warehouse storage 3
    {
        type = "item",
        name = "warehouse-storage-mk3",
        icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-storage.png", icon_size = 32}, 3, angelsmods.addons.storage.number_tint),
        subgroup = "angels-warehouses-3",
        order = "d[warehouse-storage-mk3]",
        place_result = "warehouse-storage-mk3",
        stack_size = 10,
    },

    util.merge{data.raw["logistic-container"]["angels-warehouse-storage"], {
        name = "warehouse-storage-mk3",
        minable = {result = "warehouse-storage-mk3"},
        next_upgrade = "warehouse-storage-mk4",
        inventory_size = inventory_logistic_3,
        subgroup = "angels-warehouses-3",
    }},

    -- Warehouse storage 4
    {
        type = "item",
        name = "warehouse-storage-mk4",
        icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-storage.png", icon_size = 32}, 4, angelsmods.addons.storage.number_tint),
        subgroup = "angels-warehouses-4",
        order = "d[warehouse-storage-mk4]",
        place_result = "warehouse-storage-mk4",
        stack_size = 10,
    },

    util.merge{data.raw["logistic-container"]["angels-warehouse-storage"], {
        name = "warehouse-storage-mk4",
        minable = {result = "warehouse-storage-mk4"},
        inventory_size = inventory_logistic_4,
        subgroup = "angels-warehouses-4",
    }},

    -- Warehouse requester 2
    {
        type = "item",
        name = "warehouse-requester-mk2",
        icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-requester.png", icon_size = 32}, 2, angelsmods.addons.storage.number_tint),
        subgroup = "angels-warehouses-2",
        order = "f[warehouse-requester-mk2]",
        place_result = "warehouse-requester-mk2",
        stack_size = 10,
    },

    util.merge{data.raw["logistic-container"]["angels-warehouse-requester"], {
        name = "warehouse-requester-mk2",
        minable = {result = "warehouse-requester-mk2"},
        next_upgrade = "warehouse-requester-mk3",
        inventory_size = inventory_logistic_2,
        subgroup = "angels-warehouses-2",
    }},

    -- Warehouse requester 3
    {
        type = "item",
        name = "warehouse-requester-mk3",
        icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-requester.png", icon_size = 32}, 3, angelsmods.addons.storage.number_tint),
        subgroup = "angels-warehouses-3",
        order = "f[warehouse-requester-mk3]",
        place_result = "warehouse-requester-mk3",
        stack_size = 10,
    },

    util.merge{data.raw["logistic-container"]["angels-warehouse-requester"], {
        name = "warehouse-requester-mk3",
        minable = {result = "warehouse-requester-mk3"},
        next_upgrade = "warehouse-requester-mk4",
        inventory_size = inventory_logistic_3,
        subgroup = "angels-warehouses-3",
    }},

    -- Warehouse requester 4
    {
        type = "item",
        name = "warehouse-requester-mk4",
        icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-requester.png", icon_size = 32}, 4, angelsmods.addons.storage.number_tint),
        subgroup = "angels-warehouses-4",
        order = "f[warehouse-requester-mk4]",
        place_result = "warehouse-requester-mk4",
        stack_size = 10,
    },

    util.merge{data.raw["logistic-container"]["angels-warehouse-requester"], {
        name = "warehouse-requester-mk4",
        minable = {result = "warehouse-requester-mk4"},
        inventory_size = inventory_logistic_4,
        subgroup = "angels-warehouses-4",
    }},

    -- Warehouse buffer 2
    {
        type = "item",
        name = "warehouse-buffer-mk2",
        icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-buffer.png", icon_size = 32}, 2, angelsmods.addons.storage.number_tint),
        subgroup = "angels-warehouses-2",
        order = "e[warehouse-buffer-mk2]",
        place_result = "warehouse-buffer-mk2",
        stack_size = 10,
    },

    util.merge{data.raw["logistic-container"]["angels-warehouse-buffer"], {
        name = "warehouse-buffer-mk2",
        minable = {result = "warehouse-buffer-mk2"},
        next_upgrade = "warehouse-buffer-mk3",
        inventory_size = inventory_logistic_2,
        subgroup = "angels-warehouses-2",
    }},

    -- Warehouse buffer 3
    {
        type = "item",
        name = "warehouse-buffer-mk3",
        icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-buffer.png", icon_size = 32}, 3, angelsmods.addons.storage.number_tint),
        subgroup = "angels-warehouses-3",
        order = "e[warehouse-buffer-mk3]",
        place_result = "warehouse-buffer-mk3",
        stack_size = 10,
    },

    util.merge{data.raw["logistic-container"]["angels-warehouse-buffer"], {
        name = "warehouse-buffer-mk3",
        minable = {result = "warehouse-buffer-mk3"},
        next_upgrade = "warehouse-buffer-mk4",
        inventory_size = inventory_logistic_3,
        subgroup = "angels-warehouses-3",
    }},

    -- Warehouse buffer 4
    {
        type = "item",
        name = "warehouse-buffer-mk4",
        icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-buffer.png", icon_size = 32}, 4, angelsmods.addons.storage.number_tint),
        subgroup = "angels-warehouses-4",
        order = "e[warehouse-buffer-mk4]",
        place_result = "warehouse-buffer-mk4",
        stack_size = 10,
    },

    util.merge{data.raw["logistic-container"]["angels-warehouse-buffer"], {
        name = "warehouse-buffer-mk4",
        minable = {result = "warehouse-buffer-mk4"},
        inventory_size = inventory_logistic_4,
        subgroup = "angels-warehouses-4",
    }},
})

-- Item icon adjustments
data.raw.item["angels-warehouse"].icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse.png", icon_size = 32}, 1, angelsmods.addons.storage.number_tint)
data.raw.item["angels-warehouse-passive-provider"].icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-pprovider.png", icon_size = 32 }, 1, angelsmods.addons.storage.number_tint)
data.raw.item["angels-warehouse-active-provider"].icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-aprovider.png", icon_size = 32}, 1, angelsmods.addons.storage.number_tint)
data.raw.item["angels-warehouse-storage"].icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-storage.png", icon_size = 32}, 1, angelsmods.addons.storage.number_tint)
data.raw.item["angels-warehouse-requester"].icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-requester.png", icon_size = 32}, 1, angelsmods.addons.storage.number_tint)
data.raw.item["angels-warehouse-buffer"].icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-buffer.png", icon_size = 32}, 1, angelsmods.addons.storage.number_tint)

-- Entity icon adjustments
data.raw["container"]["angels-warehouse"].icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse.png", icon_size = 32}, 1, angelsmods.addons.storage.number_tint)
data.raw["logistic-container"]["angels-warehouse-passive-provider"].icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-pprovider.png", icon_size = 32 }, 1, angelsmods.addons.storage.number_tint)
data.raw["logistic-container"]["angels-warehouse-active-provider"].icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-aprovider.png", icon_size = 32}, 1, angelsmods.addons.storage.number_tint)
data.raw["logistic-container"]["angels-warehouse-storage"].icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-storage.png", icon_size = 32}, 1, angelsmods.addons.storage.number_tint)
data.raw["logistic-container"]["angels-warehouse-requester"].icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-requester.png", icon_size = 32}, 1, angelsmods.addons.storage.number_tint)
data.raw["logistic-container"]["angels-warehouse-buffer"].icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-buffer.png", icon_size = 32}, 1, angelsmods.addons.storage.number_tint)
data.raw["container"]["warehouse-mk2"].icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse.png", icon_size = 32}, 2, angelsmods.addons.storage.number_tint)
data.raw["logistic-container"]["warehouse-passive-provider-mk2"].icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-pprovider.png", icon_size = 32 }, 2, angelsmods.addons.storage.number_tint)
data.raw["logistic-container"]["warehouse-active-provider-mk2"].icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-aprovider.png", icon_size = 32}, 2, angelsmods.addons.storage.number_tint)
data.raw["logistic-container"]["warehouse-storage-mk2"].icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-storage.png", icon_size = 32}, 2, angelsmods.addons.storage.number_tint)
data.raw["logistic-container"]["warehouse-requester-mk2"].icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-requester.png", icon_size = 32}, 2, angelsmods.addons.storage.number_tint)
data.raw["logistic-container"]["warehouse-buffer-mk2"].icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-buffer.png", icon_size = 32}, 2, angelsmods.addons.storage.number_tint)
data.raw["container"]["warehouse-mk3"].icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse.png", icon_size = 32}, 3, angelsmods.addons.storage.number_tint)
data.raw["logistic-container"]["warehouse-passive-provider-mk3"].icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-pprovider.png", icon_size = 32}, 3, angelsmods.addons.storage.number_tint)
data.raw["logistic-container"]["warehouse-active-provider-mk3"].icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-aprovider.png", icon_size = 32}, 3, angelsmods.addons.storage.number_tint)
data.raw["logistic-container"]["warehouse-storage-mk3"].icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-storage.png", icon_size = 32}, 3, angelsmods.addons.storage.number_tint)
data.raw["logistic-container"]["warehouse-requester-mk3"].icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-requester.png", icon_size = 32}, 3, angelsmods.addons.storage.number_tint)
data.raw["logistic-container"]["warehouse-buffer-mk3"].icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-buffer.png", icon_size = 32}, 3, angelsmods.addons.storage.number_tint)
data.raw["container"]["warehouse-mk4"].icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse.png", icon_size = 32}, 4, angelsmods.addons.storage.number_tint)
data.raw["logistic-container"]["warehouse-passive-provider-mk4"].icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-pprovider.png", icon_size = 32}, 4, angelsmods.addons.storage.number_tint)
data.raw["logistic-container"]["warehouse-active-provider-mk4"].icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-aprovider.png", icon_size = 32}, 4, angelsmods.addons.storage.number_tint)
data.raw["logistic-container"]["warehouse-storage-mk4"].icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-storage.png", icon_size = 32}, 4, angelsmods.addons.storage.number_tint)
data.raw["logistic-container"]["warehouse-requester-mk4"].icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-requester.png", icon_size = 32}, 4, angelsmods.addons.storage.number_tint)
data.raw["logistic-container"]["warehouse-buffer-mk4"].icons = extangels.numeral_tier({icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-buffer.png", icon_size = 32}, 4, angelsmods.addons.storage.number_tint)