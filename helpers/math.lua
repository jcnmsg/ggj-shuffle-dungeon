function math_fmod(v1, v2) -- math.fmod is broken on real hardware, this is the shitty fix I found yolo
    if math.fmod(v1, v2) == 0 or math.fmod(v1, v2) == v2 then
        return true;
    end
    return false;
end

function math_random(a, b) -- math.random was returning the same number even with different seeds being generated beforehand ¯\_(ツ)_/¯
    math.randomseed(os.time());
    return math.random(a, b);
end