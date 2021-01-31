function math_fmod(v1, v2) -- math.fmod is broken on real hardware, this is the shitty fix I found yolo
    if math.fmod(v1, v2) == 0 or math.fmod(v1, v2) == v2 then
        return true;
    end
    return false;
end

function lua_shallowcopy(orig)
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in pairs(orig) do
            copy[orig_key] = orig_value
        end
    else -- number, string, boolean, etc
        copy = orig
    end
    return copy
end