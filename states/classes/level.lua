Level = {
    bg = nil,
    platforms = {}
};

-- Level data
l0 = {
    [0] = {
        x = 0,
        y = 0,
        w = 18,
        h = CONST.screen_height
    },
    [1] = {
        x = 288,
        y = 176,
        w = 64,
        h = 64
    },
    [2] = {
        x = 0,
        y = 208,
        w = 96,
        h = 64
    },
    [3] = {
        x = 18,
        y = 64,
        w = 78,
        h = 80
    },
    [4] = {
        x = 16,
        y = 0,
        w = 16,
        h = CONST.screen_height
    },
    [5] = {
        x = 0,
        y = 240,
        w = CONST.screen_width,
        h = 32
    },
    [6] = {
        x = 160,
        y = 64,
        w = 96,
        h = 80
    },
    [7] = {
        x = 128,
        y = 112,
        w = 32,
        h = 32
    },
    [8] = {
        x = 0,
        y = 0,
        w = 240,
        h = 16
    },
    [9] = {
        x = 224,
        y = 0,
        w = 64,
        h = 112
    },
}

l1 = {
    [0] = {
        x = 0,
        y = 240,
        w = CONST.screen_width,
        h = 32
    }
}

function Level:update()
    
end

function Level:draw(layer) -- 0 = bg, 1 = fg
    if layer == 0 then
        self.bg:blit(0, 0);
    elseif layer == 1 then
        
    end

    if debug == true then
        for i=0, table.getn(self.platforms) do
            draw.fillrect(self.platforms[i].x, self.platforms[i].y, self.platforms[i].w, self.platforms[i].h, CONST.translucent_green)
        end
    end
end

function Level:new(lvl)
    l = image.load("assets/backgrounds/bg"..lvl..".png");
    local l = { 
        bg = l,
        platforms = _G["l"..lvl],
    };
    setmetatable(l, self);
    self.__index = self;
    return l;
end

function Level:is_colliding(x, y, w, h) 
    for i=0, table.getn(self.platforms) do
        local plat = self.platforms[i];

        if x < plat.x + plat.w and
            x + w > plat.x and
            y < plat.y + plat.h and
            y + h > plat.y then
                return true;
        end
    end

    return false;
end