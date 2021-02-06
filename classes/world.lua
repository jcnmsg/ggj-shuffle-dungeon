World = {};

function World:update()
    if paused == false then
        if (60 - math.floor(world.time:time()/1000) == 0) then
            timer.stop(world.time);
        end

        self.levels[self.current_level]:update();
    end
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
    w.time = timer.new(0);
    setmetatable(w, self);
    self.__index = self;
    return w;
end