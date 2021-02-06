function game_load()
    current_state = load_state;
    system = System:new();
    world = World:new();
    player = Player:new();
    boss = Boss:new();
    pause = Pause:new(); 
end

function game_update(dt)
    if controls.press("select") then
        debug = not debug;
    end

    if controls.press("start") then
        paused = not paused;
    end

    player:update(dt);
    world:update(dt);
    pause:update(dt);
end

function game_draw() 
    world:draw(0);
    player:draw();
    world:draw(1);
    pause:draw();
end

function game_free()

end