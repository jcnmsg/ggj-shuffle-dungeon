Level = {};

function Level:update()
    if table.getn(self.cards) > 0 then
        for i=0, table.getn(self.cards) do
            self.cards[i]:update();
        end
    end
end

function Level:draw(layer) -- 0 = bg, 1 = fg
    if layer == 0 then
        self.bg:blit(0, 0);
    elseif layer == 1 then
        if table.getn(self.cards) > 0 then
            for i=0, table.getn(self.cards) do
                self.cards[i]:draw();
            end
        end
    end


    if debug == true then
        for i=0, table.getn(self.platforms) do
            draw.fillrect(self.platforms[i].x, self.platforms[i].y, self.platforms[i].w, self.platforms[i].h, CONST.translucent_green)
        end
    end
end

function Level:new(lvl)
    local l = level_data[lvl];

    if table.getn(l.card_positions) > 0 then
        for i=0, table.getn(l.card_positions) do
            l.cards[i] = Card:new( l.card_positions[i].x,  l.card_positions[i].y);
        end
    end

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

