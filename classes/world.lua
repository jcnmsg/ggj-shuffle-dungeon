World = {};

function World:update()
    if (60 - math.floor(world.time:time()/1000) == 0) then
        timer.stop(world.time);
    end
end

function World:draw(layer)
    if layer == 0 then
        self.levels[self.current_level]:draw(0);
    elseif layer == 1 then
        self.levels[self.current_level]:draw(1);
        screen.print(CONST.screen_width - 6, CONST.screen_height - 16, tostring(60 - math.floor(world.time:time()/1000)), 1, CONST.white, CONST.transparent, "right")
    end

end

function World:new()
    local w = world_data;
    w.time = timer.new(0);
    setmetatable(w, self);
    self.__index = self;
    return w;
end