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
    grey = color.new(120, 120, 120),
    transparent = color.new(0,0,0,0),
    translucent_red = color.new(255,0,0,80),
    translucent_green = color.new(0,255,0,80),
    translucent_blue = color.new(0,0,255,80),
    bg_blue = color.new(29, 43, 83),
    screen_width = 480,
    screen_height = 272,
    dt = 1/60,
    font = font.load("assets/fonts/pixeled.pgf")
}

CONST = protect(CONST);