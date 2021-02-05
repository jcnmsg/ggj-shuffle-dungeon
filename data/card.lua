card_sprite = image.loadsprite("assets/sprites/SmallCardSheet.png", 8, 8);
card_data = {
    sprite = card_sprite,
    x = 0,
    y = 0,
    w = 8,
    h = 8,
    current_animation = 0,
    current_frame = 0,
    current_length = 3,
    start_frame = 0,
    loop_anim = true,
    fps = 10,
    visible = false,
    active = false,

    -- rpg elements
    bigsprite = nil,
    type = -1,
    mod = -1,
}
