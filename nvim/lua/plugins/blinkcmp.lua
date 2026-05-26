return {
  "saghen/blink.cmp",

  opts = {
    completion = {
      ghost_text = {
        enabled = false,
        show_with_selection = true,
        show_without_selection = false,
        show_with_menu = true,
        show_without_menu = true,
      },
      documentation = {
        -- Controls whether the documentation window will automatically show when selecting a completion item
        auto_show = true,
        -- delay before showing the documentation window
        auto_show_delay_ms = 300,
        -- Delay before updating the documentation window when selecting a new item
        update_delay_ms = 50,
        -- Whether to use treesitter highlighting
        treesitter_highlighting = false,
        -- Draw function
        draw = function(opts)
          opts.default_implementation()
        end,
        window = {
          min_width = 10,
          max_width = 80,
          max_height = 20,
          border = nil, -- Defaults to `vim.o.winborder` on nvim 0.11+ or 'padded' when not defined/<=0.10
          winblend = 0,
          winhighlight = "Normal:BlinkCmpDoc,FloatBorder:BlinkCmpDocBorder,EndOfBuffer:BlinkCmpDoc",
          scrollbar = true,
          -- Direction priorities
          direction_priority = {
            menu_north = { "e", "w", "n", "s" },
            menu_south = { "e", "w", "s", "n" },
          },
        },
      },
    },
        keymap = {
            preset = 'none', 
            ['<Tab>'] = {'select_next', 'fallback'},
            ['<S-Tab>'] = {'select_prev', 'fallback'},
            ['<CR>'] = { 'accept', 'fallback' },
            ['<C-space>'] = {'show', 'hide'},
            ['<C-e>']  = {'show_documentation', 'hide_documentation'}
            
            

        },
    },
}
