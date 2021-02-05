function menu_load()
    current_state, menu_selector = load_state, 1;
    menu_table = {
        "NEW GAME",
        "SETTINGS",
        "CREDITS"
    }
    game_logo = image.load("assets/misc/logo.png");
    game_bg = image.load("assets/backgrounds/bg0.png");
end

function menu_update(dt)
    if controls.press("up") and menu_selector > 1 then
        menu_selector = menu_selector - 1;
    elseif controls.press("down") and menu_selector < 3 then
        menu_selector = menu_selector + 1;
    end

    if controls.press("cross") then
        set_state(menu_selector);
    end
end

function menu_draw() 
    game_bg:blit(0, 0);
    screen.print(CONST.font, CONST.screen_width - 16, CONST.screen_height - 42, menu_table[menu_selector], .25, CONST.white, CONST.transparent, "right"); -- Menu option
end

function menu_free()
    game_logo:free();
    game_bg:free();
    menu_table = nil;
    menu_selector = nil;
end