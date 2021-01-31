block_controls = false;

function hInput()
    local hInput = 0;
    if (controls.left()) then hInput = hInput - 1; end
    if (controls.right()) then hInput = hInput + 1; end
    return hInput;
end

function vInput()
    local vInput = 0;
    if (controls.up()) then vInput = vInput - 1; end
    if (controls.down()) then vInput = vInput + 1; end
    return vInput;
end