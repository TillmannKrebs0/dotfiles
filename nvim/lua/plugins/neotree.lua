return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
    },
    config = function()
        require("neo-tree").setup({
            window = {
                width = 25,
            },
            filesystem = {
                follow_current_file = {
                    enabled = true,  -- updated for Neo-tree v3
                },
                use_libuv_file_watcher = true,
                filtered_items = {
                    hide_dotfiles = false,
                    hide_gitignored = false,
                },
            },
            git_status = {
                enable = true,        -- show git icons
                show_untracked = true, -- show untracked files, set false to hide them
            },
        })

        -- Keymaps
        vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})
        vim.keymap.set("n", "<C-g>", ":Neotree git_status float<CR>", { desc = "Show Git Status in Neo-tree" })
    end,
}

