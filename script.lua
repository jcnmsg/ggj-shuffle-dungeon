dofile("controllers/constants.lua");
dofile("controllers/fx.lua")
dofile("controllers/controls.lua")
dofile("controllers/math.lua")
dofile("states/classes/level.lua")
dofile("states/classes/world.lua")
dofile("states/classes/player.lua")
dofile("states/manager.lua")
dofile("states/menu.lua")
dofile("states/game.lua")
dofile("states/settings.lua")
dofile("states/credits.lua")

-- Project setup
os.autofps(120);
screen.dithering(0);
screen.bilinear(0);
screen.frameskip();
current_frame = 0;
debug = true;

while 1 do 
    if current_frame > 58 then current_frame = 0; else current_frame = current_frame + 1; end

    -- Block controls arbitrarily
    if block_controls == false then
        controls.read();
    end

    -- States
    if load_state == 0 then -- Menu
        if load_state ~= current_state then
            menu_load();
        end
        menu_update(CONST.dt);
        menu_draw();

    elseif load_state == 1 then -- New game
        if load_state ~= current_state then
            game_load();
        end
        game_update(CONST.dt);
        game_draw();

    elseif load_state == 2 then -- Settings
        if load_state ~= current_state then
            settings_load();
        end
        settings_update(CONST.dt);
        settings_draw();

    elseif load_state == 3 then -- Credits
        if load_state ~= current_state then
            credits_load();
        end
        credits_update(CONST.dt);
        credits_draw();
    end

    -- General
    fx_draw();

    -- Flip and wait blank start
    screen.flip();
    screen.waitvblankstart();
end