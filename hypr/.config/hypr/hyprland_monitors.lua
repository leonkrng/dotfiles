    -- Main monitor
hl.monitor({
    output      = "",
    mode        = "highres",
    position    = "auto",
    scale       = "auto",
})

-- Second monitor
hl.monitor({
    output      = "HDMI-A-1",
    mode        = "highres",
    position    = "auto",
    scale       = "auto",
    transform   = 1,
})

-- Archpad
hl.monitor({
    output      = "desc:BOE 0x0791",
    mode        = "highres",
    position    = "auto",
    scale       = "auto",
})
