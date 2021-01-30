function protect(table)
    return setmetatable({}, {
        __index = table,
        __newindex = function(t, key, value)
            return nil;
        end
    });
end

CONST = {
    white = color.new(255, 255, 255),
    black = color.new(0, 0, 0),
    transparent = color.new(0,0,0,0),
    screen_width = 480,
    screen_height = 272
}

CONST = protect(CONST);
