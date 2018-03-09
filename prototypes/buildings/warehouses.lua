-- ** INVENTORY SIZES ** --

inv_ware = 1728
inv_mk1 = 1900
inv_mk2 = 3378
inv_mk3 = 4856
inv_mk4 = 6336


if data.raw["container"]["angels-warehouse"] 
then data.raw["container"]["angels-warehouse"].inventory_size = inv_ware end

if data.raw["logistic-container"]["angels-warehouse-passive-provider"] 
then data.raw["logistic-container"]["angels-warehouse-passive-provider"].inventory_size = inv_mk1 end

if data.raw["logistic-container"]["angels-warehouse-active-provider"] 
then data.raw["logistic-container"]["angels-warehouse-active-provider"].inventory_size = inv_mk1 end

if data.raw["logistic-container"]["angels-warehouse-storage"] 
then data.raw["logistic-container"]["angels-warehouse-storage"].inventory_size = inv_mk1 end

if data.raw["logistic-container"]["angels-warehouse-requester"] 
then data.raw["logistic-container"]["angels-warehouse-requester"].inventory_size = inv_mk1 end

if  data.raw["item"]["titanium-plate"] then

-- *** ITEMS *** --

data:extend(
{

	{
    type = "item",
    name = "warehouse-passive-provider-mk2",
    icon = "__angelsaddons-warehouses__/graphics/icons/warehouse-active-provider.png",
    icon_size = 32,
	flags = {"goes-to-quickbar"},
    subgroup = "angels-warehouses",
    order = "b[warehouse-passive-provider-mk2]",
    place_result = "warehouse-passive-provider-mk2",
    stack_size = 10,
	},

	{
    type = "item",
    name = "warehouse-active-provider-mk2",
    icon = "__angelsaddons-warehouses__/graphics/icons/warehouse-active-provider.png",
    icon_size = 32,
	flags = {"goes-to-quickbar"},
    subgroup = "angels-warehouses",
    order = "c[warehouse-active-provider-mk2]",
    place_result = "warehouse-active-provider-mk2",
    stack_size = 10,
	},
	
	{
    type = "item",
    name = "warehouse-storage-mk2",
    icon = "__angelsaddons-warehouses__/graphics/icons/warehouse-active-provider.png",
    icon_size = 32,
	flags = {"goes-to-quickbar"},
    subgroup = "angels-warehouses",
    order = "d[warehouse-storage-mk2]",
    place_result = "warehouse-storage-mk2",
    stack_size = 10,
	},
	
	{
    type = "item",
    name = "warehouse-requester-mk2",
    icon = "__angelsaddons-warehouses__/graphics/icons/warehouse-active-provider.png",
    icon_size = 32,
	flags = {"goes-to-quickbar"},
    subgroup = "angels-warehouses",
    order = "e[warehouse-requester-mk2]",
    place_result = "warehouse-requester-mk2",
    stack_size = 10,
	},
	
	{
    type = "item",
    name = "warehouse-passive-provider-mk3",
    icon = "__angelsaddons-warehouses__/graphics/icons/warehouse-active-provider.png",
    icon_size = 32,
	flags = {"goes-to-quickbar"},
    subgroup = "angels-warehouses",
    order = "b[warehouse-passive-provider-mk3]",
    place_result = "warehouse-passive-provider-mk3",
    stack_size = 10,
	},
	
	{
    type = "item",
    name = "warehouse-active-provider-mk3",
    icon = "__angelsaddons-warehouses__/graphics/icons/warehouse-active-provider.png",
    icon_size = 32,
	flags = {"goes-to-quickbar"},
    subgroup = "angels-warehouses",
    order = "c[warehouse-active-provider-mk3]",
    place_result = "warehouse-active-provider-mk3",
    stack_size = 10,
	},
	
	{
    type = "item",
    name = "warehouse-storage-mk3",
    icon = "__angelsaddons-warehouses__/graphics/icons/warehouse-active-provider.png",
    icon_size = 32,
	flags = {"goes-to-quickbar"},
    subgroup = "angels-warehouses",
    order = "d[warehouse-storage-mk3]",
    place_result = "warehouse-storage-mk3",
    stack_size = 10,
	},
	
	{
    type = "item",
    name = "warehouse-requester-mk3",
    icon = "__angelsaddons-warehouses__/graphics/icons/warehouse-active-provider.png",
    icon_size = 32,
	flags = {"goes-to-quickbar"},
    subgroup = "angels-warehouses",
    order = "e[warehouse-requester-mk3]",
    place_result = "warehouse-requester-mk3",
    stack_size = 10,
	},

	{
    type = "item",
    name = "warehouse-passive-provider-mk4",
    icon = "__angelsaddons-warehouses__/graphics/icons/warehouse-active-provider.png",
    icon_size = 32,
	flags = {"goes-to-quickbar"},
    subgroup = "angels-warehouses",
    order = "a[warehouse-passive-provider-mk4]",
    place_result = "warehouse-passive-provider-mk4",
    stack_size = 10,
	},
	
	{
    type = "item",
    name = "warehouse-active-provider-mk4",
    icon = "__angelsaddons-warehouses__/graphics/icons/warehouse-active-provider.png",
    icon_size = 32,
	flags = {"goes-to-quickbar"},
    subgroup = "angels-warehouses",
    order = "b[warehouse-active-provider-mk4]",
    place_result = "warehouse-active-provider-mk4",
    stack_size = 10,
	},

	{
    type = "item",
    name = "warehouse-storage-mk4",
    icon = "__angelsaddons-warehouses__/graphics/icons/warehouse-active-provider.png",
    icon_size = 32,
	flags = {"goes-to-quickbar"},
    subgroup = "angels-warehouses",
    order = "d[warehouse-storage-mk4]",
    place_result = "warehouse-storage-mk4",
    stack_size = 10,
	},
	
	{
    type = "item",
    name = "warehouse-requester-mk4",
    icon = "__angelsaddons-warehouses__/graphics/icons/warehouse-active-provider.png",
    icon_size = 32,
	flags = {"goes-to-quickbar"},
    subgroup = "angels-warehouses",
    order = "e[warehouse-requester-mk4]",
    place_result = "warehouse-requester-mk4",
    stack_size = 10,
	},

	{
    type = "logistic-container",
    name = "warehouse-passive-provider-mk2",
    icon = "__angelsaddons-warehouses__/graphics/icons/warehouse-passive-provider.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "warehouse-passive-provider-mk2"},
    max_health = 300,
    corpse = "small-remnants",
    collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
    selection_box = {{-3, -3}, {3, 3}},
    fast_replaceable_group = "angels-warehouse",
    inventory_size = 3378,
    logistic_mode = "passive-provider",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__angelsaddons-warehouses__/graphics/entity/warehouse-passive-provider.png",
      priority = "extra-high",
      width = 256,
      height = 288,
      shift = {0, -0.5}
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {0.734375, 0.453125},
        green = {0.609375, 0.515625},
      },
      wire =
      {
        red = {0.40625, 0.21875},
        green = {0.40625, 0.375},
      }
    },
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  },
  
  {
    type = "logistic-container",
    name = "warehouse-passive-provider-mk3",
    icon = "__angelsaddons-warehouses__/graphics/icons/warehouse-passive-provider.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "warehouse-passive-provider-mk3"},
    max_health = 450,
    corpse = "small-remnants",
    collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
    selection_box = {{-3, -3}, {3, 3}},
    fast_replaceable_group = "angels-warehouse",
    inventory_size = 4856,
    logistic_mode = "passive-provider",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__angelsaddons-warehouses__/graphics/entity/warehouse-passive-provider.png",
      priority = "extra-high",
      width = 256,
      height = 288,
      shift = {0, -0.5}
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {0.734375, 0.453125},
        green = {0.609375, 0.515625},
      },
      wire =
      {
        red = {0.40625, 0.21875},
        green = {0.40625, 0.375},
      }
    },
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  },
  
  {
    type = "logistic-container",
    name = "warehouse-passive-provider-mk4",
    icon = "__angelsaddons-warehouses__/graphics/icons/warehouse-passive-provider.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "warehouse-passive-provider-mk4"},
    max_health = 600,
    corpse = "small-remnants",
    collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
    selection_box = {{-3, -3}, {3, 3}},
    fast_replaceable_group = "angels-warehouse",
    inventory_size = 6336,
    logistic_mode = "passive-provider",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__angelsaddons-warehouses__/graphics/entity/warehouse-passive-provider.png",
      priority = "extra-high",
      width = 256,
      height = 288,
      shift = {0, -0.5}
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {0.734375, 0.453125},
        green = {0.609375, 0.515625},
      },
      wire =
      {
        red = {0.40625, 0.21875},
        green = {0.40625, 0.375},
      }
    },
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  },
	
	{
    type = "logistic-container",
    name = "warehouse-active-provider-mk2",
    icon = "__angelsaddons-warehouses__/graphics/icons/warehouse-active-provider.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "warehouse-active-provider-mk2"},
    max_health = 300,
    corpse = "small-remnants",
    collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
    selection_box = {{-3, -3}, {3, 3}},
    fast_replaceable_group = "angels-warehouse",
    inventory_size = 3378,
    logistic_mode = "active-provider",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__angelsaddons-warehouses__/graphics/entity/warehouse-active-provider.png",
      priority = "extra-high",
      width = 256,
      height = 288,
      shift = {0, -0.5}
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {0.734375, 0.453125},
        green = {0.609375, 0.515625},
      },
      wire =
      {
        red = {0.40625, 0.21875},
        green = {0.40625, 0.375},
      }
    },
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  },
  
  {
    type = "logistic-container",
    name = "warehouse-active-provider-mk3",
    icon = "__angelsaddons-warehouses__/graphics/icons/warehouse-active-provider.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "warehouse-active-provider-mk3"},
    max_health = 450,
    corpse = "small-remnants",
    collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
    selection_box = {{-3, -3}, {3, 3}},
    fast_replaceable_group = "angels-warehouse",
    inventory_size = 4856,
    logistic_mode = "active-provider",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__angelsaddons-warehouses__/graphics/entity/warehouse-active-provider.png",
      priority = "extra-high",
      width = 256,
      height = 288,
      shift = {0, -0.5}
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {0.734375, 0.453125},
        green = {0.609375, 0.515625},
      },
      wire =
      {
        red = {0.40625, 0.21875},
        green = {0.40625, 0.375},
      }
    },
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  },
  
  {
    type = "logistic-container",
    name = "warehouse-active-provider-mk4",
    icon = "__angelsaddons-warehouses__/graphics/icons/warehouse-active-provider.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "warehouse-active-provider-mk4"},
    max_health = 600,
    corpse = "small-remnants",
    collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
    selection_box = {{-3, -3}, {3, 3}},
    fast_replaceable_group = "angels-warehouse",
    inventory_size = 6336,
    logistic_mode = "active-provider",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__angelsaddons-warehouses__/graphics/entity/warehouse-active-provider.png",
      priority = "extra-high",
      width = 256,
      height = 288,
      shift = {0, -0.5}
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {0.734375, 0.453125},
        green = {0.609375, 0.515625},
      },
      wire =
      {
        red = {0.40625, 0.21875},
        green = {0.40625, 0.375},
      }
    },
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  },
  
  {
    type = "logistic-container",
    name = "warehouse-storage-mk2",
    icon = "__angelsaddons-warehouses__/graphics/icons/warehouse-storage.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "warehouse-storage-mk2"},
    max_health = 300,
    corpse = "small-remnants",
    collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
    selection_box = {{-3, -3}, {3, 3}},
    fast_replaceable_group = "angels-warehouse",
    inventory_size = 3378,
    logistic_mode = "storage",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__angelsaddons-warehouses__/graphics/entity/warehouse-storage.png",
      priority = "extra-high",
      width = 256,
      height = 288,
      shift = {0, -0.5}
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {0.734375, 0.453125},
        green = {0.609375, 0.515625},
      },
      wire =
      {
        red = {0.40625, 0.21875},
        green = {0.40625, 0.375},
      }
    },
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  },
  
  {
    type = "logistic-container",
    name = "warehouse-storage-mk3",
    icon = "__angelsaddons-warehouses__/graphics/icons/warehouse-storage.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "warehouse-storage-mk3"},
    max_health = 450,
    corpse = "small-remnants",
    collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
    selection_box = {{-3, -3}, {3, 3}},
    fast_replaceable_group = "angels-warehouse",
    inventory_size = 4856,
    logistic_mode = "storage",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__angelsaddons-warehouses__/graphics/entity/warehouse-storage.png",
      priority = "extra-high",
      width = 256,
      height = 288,
      shift = {0, -0.5}
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {0.734375, 0.453125},
        green = {0.609375, 0.515625},
      },
      wire =
      {
        red = {0.40625, 0.21875},
        green = {0.40625, 0.375},
      }
    },
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  },
  
  {
    type = "logistic-container",
    name = "warehouse-storage-mk4",
    icon = "__angelsaddons-warehouses__/graphics/icons/warehouse-storage.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "warehouse-storage-mk4"},
    max_health = 600,
    corpse = "small-remnants",
    collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
    selection_box = {{-3, -3}, {3, 3}},
    fast_replaceable_group = "angels-warehouse",
    inventory_size = 6336,
    logistic_mode = "storage",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__angelsaddons-warehouses__/graphics/entity/warehouse-storage.png",
      priority = "extra-high",
      width = 256,
      height = 288,
      shift = {0, -0.5}
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {0.734375, 0.453125},
        green = {0.609375, 0.515625},
      },
      wire =
      {
        red = {0.40625, 0.21875},
        green = {0.40625, 0.375},
      }
    },
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  },
  
  {
    type = "logistic-container",
    name = "warehouse-requester-mk2",
    icon = "__angelsaddons-warehouses__/graphics/icons/warehouse-requester.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "warehouse-requester-mk2"},
    max_health = 300,
    corpse = "small-remnants",
    collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
    selection_box = {{-3, -3}, {3, 3}},
    fast_replaceable_group = "container",
    inventory_size = 3378,
    logistic_slots_count = 12,
    logistic_mode = "requester",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__angelsaddons-warehouses__/graphics/entity/warehouse-requester.png",
      priority = "extra-high",
      width = 256,
      height = 288,
      shift = {0, -0.5}
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {0.734375, 0.453125},
        green = {0.609375, 0.515625},
      },
      wire =
      {
        red = {0.40625, 0.21875},
        green = {0.40625, 0.375},
      }
    },
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  },
  
  {
    type = "logistic-container",
    name = "warehouse-requester-mk3",
    icon = "__angelsaddons-warehouses__/graphics/icons/warehouse-requester.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "warehouse-requester-mk3"},
    max_health = 450,
    corpse = "small-remnants",
    collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
    selection_box = {{-3, -3}, {3, 3}},
    fast_replaceable_group = "container",
    inventory_size = 4856,
    logistic_slots_count = 12,
    logistic_mode = "requester",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__angelsaddons-warehouses__/graphics/entity/warehouse-requester.png",
      priority = "extra-high",
      width = 256,
      height = 288,
      shift = {0, -0.5}
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {0.734375, 0.453125},
        green = {0.609375, 0.515625},
      },
      wire =
      {
        red = {0.40625, 0.21875},
        green = {0.40625, 0.375},
      }
    },
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  },
  
  {
    type = "logistic-container",
    name = "warehouse-requester-mk4",
    icon = "__angelsaddons-warehouses__/graphics/icons/warehouse-requester.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "warehouse-requester-mk4"},
    max_health = 600,
    corpse = "small-remnants",
    collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
    selection_box = {{-3, -3}, {3, 3}},
    fast_replaceable_group = "container",
    inventory_size = 6336,
    logistic_slots_count = 12,
    logistic_mode = "requester",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__angelsaddons-warehouses__/graphics/entity/warehouse-requester.png",
      priority = "extra-high",
      width = 256,
      height = 288,
      shift = {0, -0.5}
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {0.734375, 0.453125},
        green = {0.609375, 0.515625},
      },
      wire =
      {
        red = {0.40625, 0.21875},
        green = {0.40625, 0.375},
      }
    },
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  },
  
  
})
end