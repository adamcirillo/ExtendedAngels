-- Add input fluid_box to Induction Furnace
for n = 1, 4 do
    local name = (n > 1) and "induction-furnace-" .. n or "induction-furnace"
    local entity = data.raw["assembling-machine"][name]

    if not entity then goto continue end

    table.insert(entity.fluid_boxes, {
        production_type = "input",
        pipe_covers = angelsmods.pipecoverspictures(),
        volume = 1000,
        base_level = -1,
        pipe_connections = { { position = { -2, 3 } } },
    })

    ::continue::
end
