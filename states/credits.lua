function credits_load()
    current_state = load_state;
end

function credits_update()
    if controls.press("cross") then
        set_state(0);
    end
end

function credits_draw() 
    draw.fillrect(0,0, 480, 272, color.new(255, 255, 0));
end

function credits_free()

end