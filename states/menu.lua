function menu_load()
    current_state, menu_selector = load_state, 1;
    menu_table = {
        "NEW GAME",
        "SETTINGS",
        "CREDITS"
    }
    game_logo = image.load("assets/misc/logo.png");
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
    draw.fillrect(0,0, 480, 272, CONST.white); -- Background color
    game_logo:blit(40,20); -- Logo
    screen.print(CONST.screen_width - 16, CONST.screen_height - 36, menu_table[menu_selector], .8, CONST.black, CONST.transparent, "right"); -- Menu option
end

function menu_free()
    game_logo:free();
    menu_table = nil;
    menu_selector = nil;
end