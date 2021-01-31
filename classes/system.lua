System = {}

function System:new()
    s = system_data;
    setmetatable(s, self);
    self.__index = self;
    return s;
end