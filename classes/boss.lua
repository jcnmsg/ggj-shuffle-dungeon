Boss = {}

function Boss:update(dt)
   
end

function Boss:draw()
    self.sprite:blit(self.x, self.y);
end

function Boss:new()
    local boss = lua_shallowcopy(boss_data);
    setmetatable(boss, self);
    self.__index = self;
    return boss;
end