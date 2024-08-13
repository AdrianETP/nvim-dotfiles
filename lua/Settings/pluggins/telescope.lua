return {
    {
        'nvim-telescope/telescope.nvim',
        -- or                            , branch = '0.1.x',
        dependencies = { { 'nvim-lua/plenary.nvim' },

        },
        config = function()
            -- local fb_actions = require "telescope".extensions.file_browser.actions
            local telescope = require("telescope")
            telescope.setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {
                            -- even more opts
                        }
                    }
                },
                defaults = {
                    -- Default configuration for telescope goes here:
                    -- config_key = value,
                    mappings = {
                        i = {
                            -- map actions.which_key to <C-h> (default: <C-/>)
                            -- actions.which_key shows the mappings for your picker,
                            -- e.g. git_{create, delete, ...}_branch for the git_branches picker
                            ["<C-h>"] = "which_key"
                        },
                        n = {
                            ["q"] = "close"
                        }
                    }
                },
                pickers = {
                    find_files = {
                        prompt_prefix = " ",
                        hidden = true,
                    },
                    lsp_references = {
                        theme = "cursor",
                        initial_mode = "normal"
                    },
                    buffers = {
                        prompt_prefix = " "
                    },
                    git_files = {
                        prompt_prefix = " ",
                        theme = "dropdown",
                        -- previewer = false
                    },
                    git_commits = {
                        prompt_prefix = " "
                    },
                    git_branches = {
                        prompt_prefix = " "
                    },
                    colorscheme = {
                        theme = "dropdown",
                        previewer = false
                    }
                    -- Default configuration for builtin pickers goes here:
                    -- picker_name = {
                    --   picker_config_key = value,
                    --   ...
                    -- }
                    -- Now the picker_config_key will be applied every time you call this
                    -- builtin picker
                },
            })
            -- require("telescope").load_extension "file_browser"
            local builtin = require('telescope.builtin')
            require("telescope").load_extension("ui-select")
            vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
            vim.keymap.set('n', '<leader>pg', builtin.live_grep, {})
            vim.keymap.set('n', '<leader>pb', builtin.buffers, {})
            vim.keymap.set('n', '<leader>ph', builtin.help_tags, {})
            vim.keymap.set('n', '<leader>pc', builtin.colorscheme, {})
            vim.keymap.set('n', '<leader>pk', builtin.keymaps, {})
            vim.keymap.set('n', '<C-p>', builtin.git_files, {})
            vim.keymap.set('n', '<leader>lj', builtin.jumplist, {})
            vim.keymap.set('n', '<leader>lc', builtin.git_commits, {})
            vim.keymap.set('n', '<leader>lb', builtin.git_branches, {})
            vim.keymap.set('n', '<leader>ld', builtin.diagnostics, {})
            --[[ vim.api.nvim_set_keymap(
                "n",
                "<leader>pv",
                ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
                { noremap = true }
            ) ]]
            -- open file_browser with the path of the current buffer
        end,
        -- keys = {
        --     '<leader>pf',
        --     '<leader>pg',
        --     '<leader>pb',
        --     '<leader>ph',
        --     '<leader>pc',
        --     '<C-p>',
        --     '<leader>lj',
        --     '<leader>lc',
        --     '<leader>lb',
        --     '<leader>ld',
        --     -- '<leader>pv',
        -- }
        --

    },
    --[[ {
        'nvim-telescope/telescope-file-browser.nvim',
        dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    } ]]

    {
        'nvim-telescope/telescope-ui-select.nvim',
        config = function()

        end
    }

}
