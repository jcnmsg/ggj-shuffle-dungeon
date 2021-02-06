Pause = {}

function Pause:update(dt)
    if paused == true then
        dt = 0;
    end
end

function Pause:draw()
    if paused == true then
        self.ui:blit(68, 49);
        
        for i=0, 5 do
            if i < 5 then
                local attr = player.attrs[system_data.attrs[i].value];
                if (attr < 9) then
                    attr = "0"..player.attrs[system_data.attrs[i].value];
                end

                screen.print(CONST.font, system_data.attrs[i].x, system_data.attrs[i].y, attr, 0.2, CONST.white, CONST.transparent);
            else
                screen.print(CONST.font, system_data.attrs[i].x, system_data.attrs[i].y, system_data.elems[player.attrs[system_data.attrs[i].value]], 0.2, CONST.white, CONST.transparent);
            end
        end

        player.sprite:blitsprite(86,169,9);

        for i=1, table.getn(player.cards) do
            player.cards[i].bigsprite:blit(system_data.cards[i].x, system_data.cards[i].y)
        end
    end
end

function Pause:new()
    p = {
        ui = image.load("assets/sprites/UI/MenuStart.png")
    };
    setmetatable(p, self);
    self.__index = self;
    return p;
end