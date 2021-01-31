Player = {};

function Player:update(dt)
    local vInput = vInput();
    local hInput = hInput();

    -- Update direction and move x
    if hInput > 0 then
        self.direction = 2;
        self.x = self.x + math.floor(0.5 + self.x_velocity * dt);
    elseif hInput < 0 then
        self.direction = 1;
        self.x = self.x - math.floor(0.5 + self.x_velocity * dt);
    end
    self.col_x = self.x + 8;

    -- If after updating x, it is colliding, revert back
    while self:is_colliding() do
        if hInput < 0 then
            self.x = self.x + 1;
        elseif hInput > 0 then
            self.x = self.x - 1;
        end
        self.col_x = self.x + 8;
    end

    -- Jump
    local second_jumping = (controls.press('cross') and self.y_velocity ~= 0 and self.jumping == true );
    local jumping = (controls.press('cross') and (self.y_velocity == 0 or self:is_colliding() == false)); 
    
    if jumping and self.jumping == false then
        self.y_velocity = self.jump_height;
        self.jumping = true;
    end

    if second_jumping and self.second_jumping == false then
        self.y_velocity = self.jump_height - 40;
        self.second_jumping = true;
    end
    
    -- This is in charge of the jump physics.
    self.y = self.y + math.floor(0.5 + self.y_velocity * dt);
    self.col_y = self.y + 2;
    self.y_velocity = self.y_velocity - math.floor(0.5 + self.gravity * dt);
    
    if self:is_colliding() then
        self.y_velocity = 0;
        self.jumping = false;
        self.second_jumping = false;
    end

    while (self:is_colliding()) do
        local _plat = self:is_colliding();

        if (_plat.y + _plat.h < self.y + 10) then
            self.y = self.y + 1;
        else
            self.y = self.y - 1;
        end

        self.col_y = self.y + 2;
    end

    -- Track and update animations
    if  hInput == 0 then -- stopped
        if self.direction == 2 then
            self.start_frame = 9;
        else
            self.start_frame = 0;
        end    
    elseif hInput == 1 then  -- right
        self.start_frame = 12;
    elseif hInput == -1 then -- left
        self.start_frame = 3;
    end

    if (self.y_velocity > 60) then
        if self.direction == 2 then
            self.start_frame = 11;
        else
            self.start_frame = 2;
        end
    end

    if self.jumping or self.second_jumping then
        if self.direction == 2 then
            self.start_frame = 10;
        elseif self.direction == 1 then
            self.start_frame = 1;
        end
    end

    if self.current_animation ~= self.start_frame or second_jumping then
        self.current_animation = self.start_frame;
        self.current_frame = self.start_frame;
        if (self.start_frame == 0 or self.start_frame == 9) then
            self.current_length = 0;
            self.loop_anim = false;
            self.fps = 1;
        elseif (self.start_frame == 1 or self.start_frame == 10) then
            self.current_length = 1;
            self.loop_anim = false;
            self.fps = 5;
        elseif (self.start_frame == 2 or self.start_frame == 11) then
            self.current_length = 0;
            self.loop_anim = false;
            self.fps = 1;
        else 
            self.current_length = 5;
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

    if (self.x + self.w/2 > 480) then
        self.x = 0 - self.w/2;
        world.current_level = world.current_level + 1;
    end

    if (self.x + self.w/2 < 0) then 
        self.x = 480 - self.w/2 - 1;
        world.current_level = world.current_level - 1;
    end
end

function Player:draw()
    self.sprite:blitsprite(self.x, self.y, self.current_frame);

    if debug == true then
        draw.fillrect(self.col_x, self.col_y, self.col_w, self.col_h, CONST.translucent_red);
    end
end

function Player:new()
    p = player_data;
    setmetatable(p, self);
    self.__index = self;
    return p;
end

function Player:is_colliding()
    local plats = world.levels[world.current_level].platforms;
    for i=0, table.getn(plats) do
        local plat = plats[i];

        if self.col_x < plat.x + plat.w and
            self.col_x + self.col_w > plat.x and
            self.col_y < plat.y + plat.h and
            self.col_y + self.col_h > plat.y then
                return plat;
        end
    end

    return false;
end