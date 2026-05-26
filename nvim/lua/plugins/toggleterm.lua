return {
  "akinsho/toggleterm.nvim",
  opts = {
    size = 15,
    direction = "horizontal",
    shading_factor = 2,
  },
  config = function(_, opts)
    require("toggleterm").setup(opts)

    -- Terminal #1: default working directory
    function _G.open_default_terminal()
      -- the leading `1` is the count (terminal ID)
      vim.cmd("1ToggleTerm direction=horizontal")
    end

    -- Terminal #2: directory of current file
    function _G.open_filedir_terminal()
      local dir = vim.fn.expand("%:p:h")
      if dir == "" then
        dir = vim.fn.getcwd()
      end
      -- the leading `2` picks terminal ID 2
      vim.cmd("2ToggleTerm direction=horizontal dir=" .. dir)
    end

    -- Keymaps
    -- Alt+r → Terminal #1
    vim.keymap.set("n", "<A-T>", open_default_terminal, { noremap = true, silent = true })
    vim.keymap.set("t", "<A-T>", "<C-\\><C-n>:lua open_default_terminal()<CR>", { noremap = true, silent = true })

    -- Alt+t → Terminal #2
    vim.keymap.set("n", "<A-t>", open_filedir_terminal, { noremap = true, silent = true })
    vim.keymap.set("t", "<A-t>", "<C-\\><C-n>:lua open_filedir_terminal()<CR>", { noremap = true, silent = true })
  end,
}
