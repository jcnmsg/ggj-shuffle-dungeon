world_data = {
    current_level = 0,
    levels = {},
    time = 0
}

for i=0, 2 do
    world_data.levels[i] = Level:new(i);
end