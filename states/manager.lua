load_state, current_state = 1, -1; -- change load_state to x for debugging purposes, 0 is the correct value for prod

function set_state(s)
    if current_state ~= s then
        load_state = s;
    end
end