return {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local conform = require("conform")

        conform.setup({
            formatters_by_ft = {
                -- astro = { "prettier" },
                javascript = { "prettier" },
                typescript = { "prettier" },
                javascriptreact = { "prettier" },
                typescriptreact = { "prettier" },
                svelte = { "prettier" },
                css = { "prettier" },
                html = { "prettier" },
                yaml = { "prettier" },
                graphql = { "prettier" },
                lua = { "stylua" },
                python = { "isort", "black" },
                go = { "gofumpt", "golines", "goimports" },
            },
            format_on_save = {
                lsp_fallback = true,
                async = false,
                timeout_ms = 500,
            },

            vim.keymap.set("n", "<leader>lf", function()
                conform.format({
                    lsp_fallback = true,
                    async = false,
                    timeout_ms = 500,
                })
                print("formatted succesfully!")
            end),
        })
    end,
}
