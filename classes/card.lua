Card = {}

function Card:update(dt)
    
end

function Card:draw()
    self.sprite:blitsprite(self.x, self.y, self.current_frame);
end

function Card:new()
    p = player_data;
    setmetatable(p, self);
    self.__index = self;
    return p;
end

function Card:is_colliding()
    if self.x < player.col_x + player.col_w and
        self.x + self.w > player.col_x and
        self.y < player.col_y + player.col_h and
        self.y + self.h > player.col_y then
            return true;
    end
    
    return false;
end