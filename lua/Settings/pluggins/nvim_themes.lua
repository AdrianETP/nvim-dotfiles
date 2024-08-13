return {
    -- {
    --     "xiyaowong/transparent.nvim",
    --     config = function()
    --         require("transparent").setup({ -- Optional, you don't have to run setup.
    --             groups = {                 -- table: default groups
    --                 'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
    --                 'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
    --                 'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
    --                 'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
    --                 'EndOfBuffer',
    --             },
    --             extra_groups = {},   -- table: additional groups that should be cleared
    --             exclude_groups = {}, -- table: groups you don't want to clear
    --         })
    --     end
    -- },
    {
        "nyoom-engineering/oxocarbon.nvim",
        config = function()
            -- vim.cmd('colorscheme oxocarbon')
        end

    },

    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup()
            -- vim.cmd("colorscheme catppuccin-mocha")
            -- setTransparent()
        end

    },
    {
        "projekt0n/github-nvim-theme",
        tag = "v0.0.7",
        config = function()
            -- vim.cmd('colorscheme github_dark_colorblind')
        end
    },
    {
        "rebelot/kanagawa.nvim",
        config = function()
            require('kanagawa').setup({
                compile = false,  -- enable compiling the colorscheme
                undercurl = true, -- enable undercurls
                commentStyle = { italic = true },
                functionStyle = {},
                keywordStyle = { italic = true },
                statementStyle = { bold = true },
                typeStyle = {},
                transparent = false,   -- do not set background color
                dimInactive = true,    -- dim inactive window `:h hl-NormalNC`
                terminalColors = true, -- define vim.g.terminal_color_{0,17}
                colors = {             -- add/modify theme and palette colors
                    palette = {},
                    theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
                },
                overrides = function(colors) -- add/modify highlights
                    return {}
                end,
                theme = "wave",    -- Load "wave" theme when 'background' option is not set
                background = {     -- map the value of 'background' option to a theme
                    dark = "wave", -- try "dragon" !
                    light = "lotus"
                },
            })
            -- vim.cmd('colorscheme kanagawa')
        end,

    },

    -- vscode
    {
        "Mofiqul/vscode.nvim",
        -- keys = "<leader>pc",
        config = function()
            -- vim.cmd("colorscheme vscode")
        end
    },

    -- tokyo night
    {
        "folke/tokyonight.nvim",
        -- config = function()
        --     vim.cmd('colorscheme tokyonight')
        -- end,

    },
    -- onedark
    {
        "navarasu/onedark.nvim",
        config = function()
            -- require('onedark').setup {
            --
            --     style = 'cool'
            -- }
            vim.cmd('colorscheme onedark')
        end
        -- keys = "<leader>pc"
    },
    -- vscode
    {
        'Mofiqul/vscode.nvim',
        -- keys = "<leader>pc"
    },


    -- tokyo night
    {
        'folke/tokyonight.nvim',

        -- config = function()
        --     vim.cmd("colorscheme tokyonight-night")
        --     setTransparent()
        -- end
        -- keys = "<leader>pc"
    },
    {
        'Mofiqul/dracula.nvim',
        config = function()
            -- vim.cmd('colorscheme dracula')
        end,
        -- keys = "<leader>pc"
    },
    -- nord
    {
        'shaunsingh/nord.nvim',
        -- keys = "<leader>pc",
    },
    {
        "ellisonleao/gruvbox.nvim",
        config = function()
            -- vim.cmd('colorscheme gruvbox')
            --     setTransparent()
        end,
    },

    {
        "rose-pine/neovim",
        name = "rose-pine",
        -- config = function()
        --     require("rose-pine").setup()
        --     vim.cmd("colorscheme rose-pine")
        --     setTransparent()
        -- end
    },
    {
        "neanias/everforest-nvim",
        version = false,
        lazy = false,
        priority = 1000, -- make sure to load this before all the other start plugins
        -- Optional; default configuration will be used if setup isn't called.
        config = function()
            require("everforest").setup({
                -- vim.cmd("colorscheme everforest")
            })
        end,
    },
    {
        "oxfist/night-owl.nvim",
        lazy = false,    -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            -- load the colorscheme here
            -- vim.cmd.colorscheme("night-owl")
        end,
    },
}
