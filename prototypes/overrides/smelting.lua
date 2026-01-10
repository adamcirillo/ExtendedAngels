-- Add input fluid_box to Induction Furnace
for n = 1, 4 do
    local name = (n > 1) and "angels-induction-furnace-" .. n or "angels-induction-furnace"
    local entity = data.raw["assembling-machine"][name]

    if not entity then goto continue end

    table.insert(entity.fluid_boxes, {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        base_level = -1,
        pipe_connections = { { flow_direction = "input", position = { -2, 2 }, direction = defines.direction.south } },
    })

    ::continue::
end
