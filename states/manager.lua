load_state, current_state = 0, -1;

function set_state(s)
    if current_state ~= s then
        load_state = s;
    end
end