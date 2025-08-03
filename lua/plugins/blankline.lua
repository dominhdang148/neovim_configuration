return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
    config = function()
        local highlight = {
            "RainbowRed",
            "RainbowYellow",
            "RainbowBlue",
            "RainbowOrange",
            "RainbowGreen",
            "RainbowViolet",
            "RainbowCyan",
        }

        local hooks = require "ibl.hooks"
        -- create the highlight groups in the highlight setup hook, so they are reset
        -- every time the colorscheme changes
        hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
            vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#F265B5" })
            vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#F1FC79" })
            vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#7081d0" })
            vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#f7c67f" })
            vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#37f499" })
            vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#a48fc2" })
            vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#04d1f9" })
        end)
       require('ibl').setup{indent = {highlight = highlight}}
    end
}
