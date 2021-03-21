if not (mods["angelsaddons-storage"] and angelsmods.addons.storage.warehouses) then return end

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

local tint = angelsmods.addons.storage.number_tint

local warehouse_buildings = {
    -- STANDARD WAREHOUSES
    -- Warehouse 2
    ["warehouse-mk2"] = {
        source = "angels-warehouse",
        type = "container",
        icon = "__angelsaddons-storage__/graphics/icons/warehouse.png",
        tier = 2,
        order = "b[warehouse-mk2]",
        subgroup = "angels-warehouses-2",
        next_upgrade = "warehouse-mk3",
        inventory_size = inventory_warehouse_2,
    },

    -- Warehouse 3
    ["warehouse-mk3"] = {
        source = "angels-warehouse",
        type = "container",
        icon = "__angelsaddons-storage__/graphics/icons/warehouse.png",
        tier = 3,
        order = "b[warehouse-mk3]",
        subgroup = "angels-warehouses-3",
        next_upgrade = "warehouse-mk4",
        inventory_size = inventory_warehouse_3,
    },

    -- Warehouse 4
    ["warehouse-mk4"] = {
        source = "angels-warehouse",
        type = "container",
        icon = "__angelsaddons-storage__/graphics/icons/warehouse.png",
        tier = 4,
        order = "b[warehouse-mk4]",
        subgroup = "angels-warehouses-4",
        inventory_size = inventory_warehouse_4,
    },

    -- LOGISTIC WAREHOUSES
    -- Warehouse passive provider 2
    ["warehouse-passive-provider-mk2"] = {
        source = "angels-warehouse-passive-provider",
        type = "logistic-container",
        icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-pprovider.png",
        tier = 2,
        order = "b[warehouse-passive-provider-mk2]",
        subgroup = "angels-warehouses-2",
        next_upgrade = "warehouse-passive-provider-mk3",
        inventory_size = inventory_logistic_2,
    },

    -- Warehouse passive provider 3
    ["warehouse-passive-provider-mk3"] = {
        source = "angels-warehouse-passive-provider",
        type = "logistic-container",
        icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-pprovider.png",
        tier = 3,
        order = "b[warehouse-passive-provider-mk3]",
        subgroup = "angels-warehouses-3",
        next_upgrade = "warehouse-passive-provider-mk4",
        inventory_size = inventory_logistic_3,
    },

    -- Warehouse passive provider 4
    ["warehouse-passive-provider-mk4"] = {
        source = "angels-warehouse-passive-provider",
        type = "logistic-container",
        icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-pprovider.png",
        tier = 4,
        order = "a[warehouse-passive-provider-mk4]",
        subgroup = "angels-warehouses-4",
        inventory_size = inventory_logistic_4,
    },

    -- Warehouse active provider 2
    ["warehouse-active-provider-mk2"] = {
        source = "angels-warehouse-active-provider",
        type = "logistic-container",
        icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-aprovider.png",
        tier = 2,
        order = "c[warehouse-active-provider-mk2]",
        subgroup = "angels-warehouses-2",
        next_upgrade = "warehouse-active-provider-mk3",
        inventory_size = inventory_logistic_2,
    },

    -- Warehouse active provider 3
    ["warehouse-active-provider-mk3"] = {
        source = "angels-warehouse-active-provider",
        type = "logistic-container",
        icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-aprovider.png",
        tier = 3,
        order = "c[warehouse-active-provider-mk3]",
        subgroup = "angels-warehouses-3",
        next_upgrade = "warehouse-active-provider-mk4",
        inventory_size = inventory_logistic_3,
    },

    -- Warehouse active provider 4
    ["warehouse-active-provider-mk4"] = {
        source = "angels-warehouse-active-provider",
        type = "logistic-container",
        icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-aprovider.png",
        tier = 4,
        order = "b[warehouse-active-provider-mk4]",
        subgroup = "angels-warehouses-4",
        inventory_size = inventory_logistic_4,
    },

    -- Warehouse storage 2
    ["warehouse-storage-mk2"] = {
        source = "angels-warehouse-storage",
        type = "logistic-container",
        icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-storage.png",
        tier = 2,
        order = "d[warehouse-storage-mk2]",
        subgroup = "angels-warehouses-2",
        next_upgrade = "warehouse-storage-mk3",
        inventory_size = inventory_logistic_2,
    },

    -- Warehouse storage 3
    ["warehouse-storage-mk3"] = {
        source = "angels-warehouse-storage",
        type = "logistic-container",
        icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-storage.png",
        tier = 3,
        order = "d[warehouse-storage-mk3]",
        subgroup = "angels-warehouses-3",
        next_upgrade = "warehouse-storage-mk4",
        inventory_size = inventory_logistic_3,
    },

    -- Warehouse storage 4
    ["warehouse-storage-mk4"] = {
        source = "angels-warehouse-storage",
        type = "logistic-container",
        icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-storage.png",
        tier = 4,
        order = "d[warehouse-storage-mk4]",
        subgroup = "angels-warehouses-4",
        inventory_size = inventory_logistic_4,
    },

    -- Warehouse requester 2
    ["warehouse-requester-mk2"] = {
        source = "angels-warehouse-requester",
        type = "logistic-container",
        icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-requester.png",
        tier = 2,
        order = "f[warehouse-requester-mk2]",
        subgroup = "angels-warehouses-2",
        next_upgrade = "warehouse-requester-mk3",
        inventory_size = inventory_logistic_2,
    },

    -- Warehouse requester 3
    ["warehouse-requester-mk3"] = {
        source = "angels-warehouse-requester",
        type = "logistic-container",
        icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-requester.png",
        tier = 3,
        order = "f[warehouse-requester-mk3]",
        subgroup = "angels-warehouses-3",
        next_upgrade = "warehouse-requester-mk4",
        inventory_size = inventory_logistic_3,
    },

    -- Warehouse requester 4
    ["warehouse-requester-mk4"] = {
        source = "angels-warehouse-requester",
        type = "logistic-container",
        icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-requester.png",
        tier = 4,
        order = "f[warehouse-requester-mk4]",
        subgroup = "angels-warehouses-4",
        inventory_size = inventory_logistic_4,
    },

    -- Warehouse buffer 2
    ["warehouse-buffer-mk2"] = {
        source = "angels-warehouse-buffer",
        type = "logistic-container",
        icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-buffer.png",
        tier = 2,
        order = "e[warehouse-buffer-mk2]",
        subgroup = "angels-warehouses-2",
        next_upgrade = "warehouse-buffer-mk3",
        inventory_size = inventory_logistic_2,
    },

    -- Warehouse buffer 3
    ["warehouse-buffer-mk3"] = {
        source = "angels-warehouse-buffer",
        type = "logistic-container",
        icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-buffer.png",
        tier = 3,
        order = "e[warehouse-buffer-mk3]",
        subgroup = "angels-warehouses-3",
        next_upgrade = "warehouse-buffer-mk4",
        inventory_size = inventory_logistic_3,
    },

    -- Warehouse buffer 4
    ["warehouse-buffer-mk4"] = {
        source = "angels-warehouse-buffer",
        type = "logistic-container",
        icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-buffer.png",
        tier = 4,
        order = "e[warehouse-buffer-mk4]",
        subgroup = "angels-warehouses-4",
        inventory_size = inventory_logistic_4,
    },
}

for name, params in pairs(warehouse_buildings) do
    -- Check for source entity
    local source_entity = data.raw[params.type][params.source]
    if not source_entity then goto continue end

    -- Fetch the icon with numeral overlay
    local icons = extangels.numeral_tier({icon = params.icon, icon_size = params.icon_size or 32}, params.tier, params.tint or tint)

    data:extend({
        -- Create the item
        {
            type = "item",
            name = name,
            icons = icons,
            subgroup = params.subgroup or nil,
            order = params.order,
            place_result = name,
            stack_size = params.stack_size or 10,
        },

        -- Create the entity
        util.merge{source_entity, {
            name = name,
            mineable = {result = name},
            next_upgrade = params.next_upgrade or nil,
            inventory_size = params.inventory_size,
            subgroup = params.subgroup,
        }},
    })

    -- Set entity icon
    data.raw[params.type][name].icons = icons

    -- Continue
    ::continue::
end

-- ANGEL FIXES
local base_warehouses = {
    ["angels-warehouse"] = {icon = "__angelsaddons-storage__/graphics/icons/warehouse.png", type = "container"},
    ["angels-warehouse-passive-provider"] = {icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-pprovider.png", type = "logistic-container"},
    ["angels-warehouse-active-provider"] = {icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-aprovider.png", type = "logistic-container"},
    ["angels-warehouse-storage"] = {icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-storage.png", type = "logistic-container"},
    ["angels-warehouse-requester"] = {icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-requester.png", type = "logistic-container"},
    ["angels-warehouse-buffer"] = {icon = "__angelsaddons-storage__/graphics/icons/warehouse-log-buffer.png", type = "logistic-container"},
}

for name, params in pairs(base_warehouses) do
    local item = data.raw.item[name]
    local entity = data.raw[params.type][name]

    if item then
        item.icons = extangels.numeral_tier({icon = params.icon, icon_size = 32}, 1, tint)
    end

    if entity then
        entity.icons = extangels.numeral_tier({icon = params.icon, icon_size = 32}, 1, tint)
    end
end







