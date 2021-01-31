World = {
    current_level = 0,
    levels = {
        [0] = Level:new(0),
        [1] = Level:new(1),
    }
};

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
    local w = {};
    setmetatable(w, self);
    self.__index = self;
    return w;
end