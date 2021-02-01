cards_data = {
    -- ARMOR CARDS (ARM)
    [0] = {
        sprite = image.load("assets/sprites/Cards/CardARM(+1).png"),
        type = 0,
        mod = 1,
    },
    [1] = {
        sprite = image.load("assets/sprites/Cards/CardARM(+2).png"),
        type = 0,
        mod = 2,
    },
    [2] = {
        sprite = image.load("assets/sprites/Cards/CardARM(+3).png"),
        type = 0,
        mod = 3,
    },
    [3] = {
        sprite = image.load("assets/sprites/Cards/CardARM(-1).png"),
        type = 0,
        mod = -1,
    },
    [4] = {
        sprite = image.load("assets/sprites/Cards/CardARM(-2).png"),
        type = 0,
        mod = -2,
    },
    [5] = {
        sprite = image.load("assets/sprites/Cards/CardARM(-3).png"),
        type = 0,
        mod = -3,
    },
    -- SDMG CARDS (ARM)
    [6] = {
        sprite = image.load("assets/sprites/Cards/CardSDMG(+1).png"),
        type = 1,
        mod = 1,
    },
    [7] = {
        sprite = image.load("assets/sprites/Cards/CardSDMG(+2).png"),
        type = 1,
        mod = 2,
    },
    [8] = {
        sprite = image.load("assets/sprites/Cards/CardSDMG(+3).png"),
        type = 1,
        mod = 3,
    },
    [9] = {
        sprite = image.load("assets/sprites/Cards/CardSDMG(-1).png"),
        type = 1,
        mod = -1,
    },
    [10] = {
        sprite = image.load("assets/sprites/Cards/CardSDMG(-2).png"),
        type = 1,
        mod = -2,
    },
    [11] = {
        sprite = image.load("assets/sprites/Cards/CardSDMG(-3).png"),
        type = 1,
        mod = -3,
    },
    -- EVASION CARDS (EVA)
    [12] = {
        sprite = image.load("assets/sprites/Cards/CardEVA(-3).png"),
        type = 2,
        mod = -3,
    },
    [13] = {
        sprite = image.load("assets/sprites/Cards/CardEVA(-2).png"),
        type = 2,
        mod = -2,
    },
    [14] = {
        sprite = image.load("assets/sprites/Cards/CardEVA(-1).png"),
        type = 2,
        mod = -1,
    },
    [15] = {
        sprite = image.load("assets/sprites/Cards/CardEVA(+3).png"),
        type = 2,
        mod = 3,
    },
    [16] = {
        sprite = image.load("assets/sprites/Cards/CardEVA(+2).png"),
        type = 2,
        mod = 2,
    },
    [17] = {
        sprite = image.load("assets/sprites/Cards/CardEVA(+1).png"),
        type = 2,
        mod = 1,
    },
     -- LIFE CARDS (ARM)
    [18] = {
        sprite = image.load("assets/sprites/Cards/CardLIFE(25).png"),
        type = 3,
        mod = 25,
    },
    [19] = {
        sprite = image.load("assets/sprites/Cards/CardLIFE(50).png"),
        type = 3,
        mod = 50,
    },
    [20] = {
        sprite = image.load("assets/sprites/Cards/CardLIFE(100).png"),
        type = 3,
        mod = 100,
    },
    -- ATK CARDS (FIRE)
    [21] = {
        sprite = image.load("assets/sprites/Cards/CardFIRE(1).png"),
        type = 4,
        mod = 1,
        elem = 2,
    },
    [22] = {
        sprite = image.load("assets/sprites/Cards/CardFIRE(2).png"),
        type = 4,
        mod = 2,
        elem = 2,
    },
    [23] = {
        sprite = image.load("assets/sprites/Cards/CardFIRE(3).png"),
        type = 4,
        mod = 3,
        elem = 2,
    },
    -- ATK CARDS (ICE)
    [24] = {
        sprite = image.load("assets/sprites/Cards/CardICE(1).png"),
        type = 4,
        mod = 1,
        elem = 5,
    },
    [25] = {
        sprite = image.load("assets/sprites/Cards/CardICE(2).png"),
        type = 4,
        mod = 2,
        elem = 5,
    },
    [26] = {
        sprite = image.load("assets/sprites/Cards/CardICE(3).png"),
        type = 4,
        mod = 3,
        elem = 5,
    },
    -- ATK CARDS (LEAF)
    [27] = {
        sprite = image.load("assets/sprites/Cards/CardLEAF(1).png"),
        type = 4,
        mod = 1,
        elem = 3,
    },
    [28] = {
        sprite = image.load("assets/sprites/Cards/CardLEAF(2).png"),
        type = 4,
        mod = 2,
        elem = 3,
    },
    [29] = {
        sprite = image.load("assets/sprites/Cards/CardLEAF(3).png"),
        type = 4,
        mod = 3,
        elem = 3,
    },
    -- ATK CARDS (LGTN)
    [30] = {
        sprite = image.load("assets/sprites/Cards/CardLGTN(1).png"),
        type = 4,
        mod = 1,
        elem = 1,
    },
    [31] = {
        sprite = image.load("assets/sprites/Cards/CardLGTN(2).png"),
        type = 4,
        mod = 2,
        elem = 1,
    },
    [32] = {
        sprite = image.load("assets/sprites/Cards/CardLGTN(3).png"),
        type = 4,
        mod = 3,
        elem = 1,
    },
    -- ATK CARDS (ROCK)
    [33] = {
        sprite = image.load("assets/sprites/Cards/CardROCK(1).png"),
        type = 4,
        mod = 1,
        elem = 4,
    },
    [34] = {
        sprite = image.load("assets/sprites/Cards/CardROCK(2).png"),
        type = 4,
        mod = 2,
        elem = 4,
    },
    [35] = {
        sprite = image.load("assets/sprites/Cards/CardROCK(3).png"),
        type = 4,
        mod = 3,
        elem = 4,
    },
    -- ATK CARDS (WATER)
    [36] = {
        sprite = image.load("assets/sprites/Cards/CardWATER(1).png"),
        type = 4,
        mod = 1,
        elem = 0,
    },
    [37] = {
        sprite = image.load("assets/sprites/Cards/CardWATER(2).png"),
        type = 4,
        mod = 2,
        elem = 0,
    },
    [38] = {
        sprite = image.load("assets/sprites/Cards/CardWATER(3).png"),
        type = 4,
        mod = 3,
        elem = 0,
    },
    [39] = {
        sprite = image.load("assets/sprites/Cards/CardELEM(SWAP).png"),
        type = 99,
        mod = "lol"
    }
}