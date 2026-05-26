return {
      "gruvw/strudel.nvim",
      config = function()
            require("strudel").setup()
            vim.keymap.set("n", "<leader>m", "<cmd>StrudelToggle<cr>", {desc = "Strudel: Toggle"})
            vim.keymap.set("n", "<leader>mm", "<cmd>StrudelUpdate<cr>", {desc = "Strudel: Update"})
      end,
}
