World = {};

function World:update()
    
end

function World:draw(layer)
    if layer == 0 then
        self.levels[self.current_level]:draw(0);
    elseif layer == 1 then
        self.levels[self.current_level]:draw(1);
    end
end

function World:new()
    local w = world_data;
    setmetatable(w, self);
    self.__index = self;
    return w;
end