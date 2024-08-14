return {
    "epwalsh/obsidian.nvim",
    version = "*", -- recommended, use latest release instead of latest commit
    -- lazy = true,

    -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    -- event = {
    --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
    --   -- refer to `:h file-pattern` for more examples
    --   "BufReadPre path/to/my-vault/*.md",
    --   "BufNewFile path/to/my-vault/*.md",
    -- },
    dependencies = {
        -- Required.
        "nvim-lua/plenary.nvim",

        -- see below for full list of optional dependencies 👇
    },
    config = function()
        require("obsidian").setup({

            workspaces = {
                {
                    name = "notes",
                    path = "~/Sync/Notes",
                },
            },
            daily_notes = {
                folder = "dailies"
            },
            mappings = {
                -- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
                ["gd"] = {
                    action = function()
                        return require("obsidian").util.gf_passthrough()
                    end,
                    opts = { noremap = false, expr = true, buffer = true },
                },
                -- Toggle check-boxes.
                ["<leader>ch"] = {
                    action = function()
                        return require("obsidian").util.toggle_checkbox()
                    end,
                    opts = { buffer = true },
                },
                -- Smart action depending on context, either follow link or toggle checkbox.
                ["<cr>"] = {
                    action = function()
                        return require("obsidian").util.smart_action()
                    end,
                    opts = { buffer = true, expr = true },
                }
            },
            -- Optional, customize how note file names are generated given the ID, target directory, and title.
            ---@param spec { id: string, dir: obsidian.Path, title: string|? }
            ---@return string|obsidian.Path The full path to the new note.
            note_path_func = function(spec)
                -- This is equivalent to the default behavior.
                local path = spec.dir / tostring(spec.title)
                return path:with_suffix(".md")
            end,

        })
        vim.keymap.set("n", "<leader>ot", ":ObsidianToday<CR>", {})
        vim.keymap.set("n", "<leader>oT", ":ObsidianTomorrow<CR>", {})
    end
}
