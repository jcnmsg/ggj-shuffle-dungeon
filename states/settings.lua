function settings_load() 
    current_state = load_state;
end

function settings_update(dt)
    if controls.press("cross") then
        set_state(3);
    end

    if (controls.press("square")) then
        fx_update();
    end
end

function settings_draw() 
    draw.fillrect(0,0, 480, 272, color.new(0, 255, 0));
end

function settings_free()

end