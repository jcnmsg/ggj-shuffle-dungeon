World = {
    bg = image.load("assets/backgrounds/bg0.png"),
    platforms = {
        [0] = {
            x = 0,
            y = 193,
            w = CONST.screen_width,
            h = 100
        },
        [1] = {
            x = 256,
            y = 163,
            w = CONST.screen_width/2,
            h = 30
        },
        [2] = {
            x = 0,
            y = 130,
            w = 160,
            h = 16
        }
    }
};

function World:update()
    
end

function World:draw(layer) -- 0 = bg, 1 = fg
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

function World:new()
    local p = {};
    setmetatable(p, self);
    self.__index = self;
    return p;
end

function World:is_colliding(x, y, w, h) 
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