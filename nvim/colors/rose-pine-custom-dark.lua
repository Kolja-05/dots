vim.cmd("colorscheme rose-pine")
-- Seitenleiste
vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#32323E", bg = "#11111B" })
vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#32323E", bg = "#11111B" })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#D96500", bg = "#11111B", bold = true })
-- Hintergrund anpassen
vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "NONE" })


vim.api.nvim_set_hl(0, "LspInlayHint", {fg = "#32323E",bg = "NONE", italic = true })

