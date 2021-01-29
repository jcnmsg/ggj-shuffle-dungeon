function menu_load()
    current_state, menu_selector = load_state, 1;
end

function menu_update()
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
    draw.fillrect(0,0, 480, 272, color.new(255, 0, 0));

    screen.print(10, 10, menu_selector);
end

function menu_free()

end