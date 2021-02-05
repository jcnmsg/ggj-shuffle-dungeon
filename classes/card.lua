Card = {}

function Card:update(dt)
    if self.visible == true and self.active == true then
        if self.current_animation ~= self.start_frame then
            self.current_animation = self.start_frame;
            self.current_frame = self.start_frame;
            if (self.start_frame == 0) then
                self.current_length = 3;
                self.loop_anim = true;
                self.fps = 3;
            end
        end

        if (math_fmod(current_frame, self.fps)) then
            if self.current_frame < self.current_animation + self.current_length then
                self.current_frame = self.current_frame + 1;
            elseif self.current_frame >= self.current_animation + self.current_length and self.loop_anim == true then
                self.current_frame = self.start_frame;
            end
        end
    end
end

function Card:draw()
    if self.visible == true and self.active == true then
        self.sprite:blitsprite(self.x, self.y, self.current_frame);
    end
end

function Card:new(x, y, lvl, i)
    local crd = lua_shallowcopy(card_data);
    local r = math.random(0, 39);
    local active = math.random(0, 1);
    
    crd.x = x;
    crd.y = y;
    crd.bigsprite = cards_data[r].bigsprite;
    crd.type = cards_data[r].type;
    crd.mod = cards_data[r].mod;

    if active == 1 or (i == 0 and lvl == 0) then -- first card always visible
        crd.visible = true;
        crd.active = true;
    end

    setmetatable(crd, self);
    self.__index = self;
    return crd;
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