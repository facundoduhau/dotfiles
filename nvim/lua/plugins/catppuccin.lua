return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            flavour = "auto",
            background = {
                light = "latte",
                dark = "mocha",
            },
            transparent_background = false,
            show_end_of_buffer = false,
            term_colors = false,
            dim_inactive = {
                enabled = false,
                shade = "dark",
                percentage = 0.15,
            },
            no_italic = false,
            no_bold = false,
            no_underline = false,
            styles = {
                comments = { "italic" },
                conditionals = { },
                loops = { },
                functions = { "italic" },
                keywords = { "italic" },
                strings = { "italic" },
                variables = { "italic" },
                numbers = { },
                booleans = { "italic" },
                properties = { },
                types = { "italic" },
                operators = { },
            },
            color_overrides = {},
            custom_highlights = {
                -- C++ specific highlights
                ["@type"] = { style = { "italic" } },
                ["@type.builtin"] = { style = { "italic" } },
                ["@type.qualifier"] = { style = { "italic" } },
                ["@storageclass"] = { style = { "italic" } },
                ["@keyword.type"] = { style = { "italic" } },
                
                -- Additional C++ specific groups
                ["@type.cpp"] = { style = { "italic" } },
                ["@keyword.type.cpp"] = { style = { "italic" } },
                ["Type"] = { style = { "italic" } },
                ["Structure"] = { style = { "italic" } },
                ["StorageClass"] = { style = { "italic" } },
                ["Typedef"] = { style = { "italic" } },
            },
            default_integrations = true,
            integrations = {
                cmp = true,
                gitsigns = true,
                nvimtree = true,
                treesitter = true,
                notify = false,
                mini = {
                    enabled = true,
                    indentscope_color = "",
                },
            },
        })

        -- Additional highlight overrides after colorscheme is loaded
        vim.api.nvim_create_autocmd("ColorScheme", {
            pattern = "catppuccin",
            callback = function()
                -- Force italic highlights for C++ types
                vim.cmd([[
                    highlight! link @type.builtin.cpp Type
                    highlight! Type gui=italic cterm=italic
                    highlight! StorageClass gui=italic cterm=italic
                    highlight! Structure gui=italic cterm=italic
                    highlight! Typedef gui=italic cterm=italic
                ]])
            end,
        })

        vim.cmd.colorscheme "catppuccin"
    end
}
