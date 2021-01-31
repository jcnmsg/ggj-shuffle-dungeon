fx = {
    scanlines1 = image.load("assets/fx/scanlines1.png");
    scanlines2 = image.load("assets/fx/scanlines2.png");
    scanline_mode = 2;
};

function fx_update()
    if (fx["scanline_mode"] < 2) then
        fx["scanline_mode"] = fx["scanline_mode"] + 1;
    else
        fx["scanline_mode"] = 0;
    end
end

function fx_draw()
    if fx["scanline_mode"] ~= 0 then
        fx["scanlines"..tostring(fx["scanline_mode"])]:blit(0, 0);
    end
end