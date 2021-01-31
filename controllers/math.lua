function math_fmod(v1, v2) --math.fmod is broken on real hardware, this is the shitty fix I found yolo
    if math.fmod(v1, v2) == 0 or math.fmod(v1, v2) == v2 then
        return true;
    end
    return false;
end