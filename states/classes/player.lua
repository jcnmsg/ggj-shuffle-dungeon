Player = {
    sprite = image.loadsprite("assets/sprites/player.png", 32, 32),
    x_velocity = 150,
    y_velocity = 0,
    x = 0,
    y = 0,
    w = 32,
    h = 32,

    col_x = 0,
    col_y = 0,
    col_w = 0,
    col_h = 0,

    current_animation = 0,
    current_frame = 0,
    current_length = 3,
    start_frame = 0,

    direction = 2;

    jumping = false;
    second_jumping = false;
    jump_height = -400;
    gravity = -1600;
};

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
            self.start_frame = 1;
        else
            self.start_frame = 0;
        end
    elseif hInput == 1 then  -- right
        self.start_frame = 1;
    elseif hInput == -1 then -- left
        self.start_frame = 0;
    end
end

function Player:draw()
    self.sprite:blitsprite(self.x, self.y, self.start_frame);

    if debug == true then
        draw.fillrect(self.col_x, self.col_y, self.col_w, self.col_h, CONST.translucent_red);
    end
end

function Player:new(x, y)
    local p = {
        x = x,
        y = y,
        col_x = x + 8,
        col_y = y + 2,
        col_w = 16,
        col_h = 30
    };
    setmetatable(p, self);
    self.__index = self;
    return p;
end

function Player:is_colliding()
    for i=0, table.getn(world.platforms) do
        local plat = world.platforms[i];

        if self.col_x < plat.x + plat.w and
            self.col_x + self.col_w > plat.x and
            self.col_y < plat.y + plat.h and
            self.col_y + self.col_h > plat.y then
                return plat;
        end
    end

    return false;
end