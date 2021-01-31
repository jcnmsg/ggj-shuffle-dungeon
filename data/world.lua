world_data = {
    current_level = 0,
    levels = {}
}

for i = 0,3 do
    world_data.levels[i] = Level:new(i);
end