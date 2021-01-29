function game_load()
    current_state = load_state;
end

function game_update()
    if controls.press("cross") then
        set_state(2);
    end
end

function game_draw() 
    draw.fillrect(0,0, 480, 272, color.new(0, 0, 255));
end

function game_free()

end