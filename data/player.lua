player_data = {
    -- Platformer attrs
    sprite = nil,
    x_velocity = 150,
    y_velocity = 0,
    x = 310,
    y = 192,
    w = 32,
    h = 32,
    col_x = 318,
    col_y = 194,
    col_w = 16,
    col_h = 30,
    current_animation = 0,
    current_frame = 0,
    current_length = 0,
    start_frame = 0,
    loop_anim = false,
    fps = 3,
    direction = 2,
    jumping = false,
    second_jumping = false,
    falling = false,
    jump_height = -400,
    gravity = -1600,
    attrs = {},
    cards = {}
}

player_attr_prefabs = {
    [0] = {
        life = 300,
        mana = 5,
        sdmg = 4,
        arm = 5,
        eva = 3,
        elem = -1 -- randomized later
    },
    [1] = {
        life = 400,
        mana = 3,
        sdmg = 3,
        arm = 3,
        eva = 3,
        elem = -1 -- randomized later
    },
    [2] = {
        life = 500,
        mana = 3,
        sdmg = 2,
        arm = 5,
        eva = 2,
        elem = -1 -- randomized later
    },
    [3] = {
        life = 300,
        mana = 3,
        sdmg = 5,
        arm = 3,
        eva = 3,
        elem = -1 -- randomized later
    },
    [4] = {
        life = 500,
        mana = 5,
        sdmg = 2,
        arm = 5,
        eva = 3,
        elem = -1 -- randomized later
    }
}