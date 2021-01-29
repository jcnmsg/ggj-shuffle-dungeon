dofile("controllers/fx.lua")
dofile("controllers/controls.lua")
dofile("states/manager.lua")
dofile("states/menu.lua")
dofile("states/game.lua")
dofile("states/settings.lua")
dofile("states/credits.lua")

while 1 do 
    -- Block controls arbitrarily
    if block_controls == false then
        controls.read();
    end

    -- States
    if load_state == 0 then -- Menu
        if load_state ~= current_state then
            menu_load();
        end
        menu_update();
        menu_draw();

    elseif load_state == 1 then -- New game
        if load_state ~= current_state then
            game_load();
        end
        game_update();
        game_draw();

    elseif load_state == 2 then -- Settings
        if load_state ~= current_state then
            settings_load();
        end
        settings_update();
        settings_draw();

    elseif load_state == 3 then -- Credits
        if load_state ~= current_state then
            credits_load();
        end
        credits_update();
        credits_draw();
    end

    -- General
    fx_draw();

    -- Flip and wait blank start
    screen.flip();
    screen.waitvblankstart();
end