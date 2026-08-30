hl.config({
    input = {
        kb_layout = "de",
        kb_variant = "",
        kb_model = "",
        kb_rules = "",
        kb_options = "",
        follow_mouse = 1,

        -- -1.0 - 1.0, 0 means no modification
        sensitivity = 0,
        touchpad = {
            natural_scroll = false,
        },
    },
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})
