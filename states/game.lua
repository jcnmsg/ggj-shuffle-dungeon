function game_load()
    current_state = load_state;
    system = System:new();
    world = World:new();
    player = Player:new();
    boss = Boss:new();
end

function game_update(dt)
    if controls.press("select") then
        debug = not debug;
    end

    if (controls.press("start")) then
        fx_update();
    end

    player:update(dt);
    world:update(dt);
end

function game_draw() 
    world:draw(0);
    player:draw();
    world:draw(1);
end

function game_free()

end