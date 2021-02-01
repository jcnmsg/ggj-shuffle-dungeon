world_data = {
    current_level = 4,
    levels = {},
    time = 0
}

for i=0, table.getn(level_data) do
    world_data.levels[i] = Level:new(i);
end