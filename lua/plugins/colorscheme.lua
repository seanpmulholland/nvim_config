return { -- You can easily change to a different colorscheme.
  {
    'aliqyan-21/darkvoid.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      require('darkvoid').setup {
        transparent = true,
        glow = true,
        show_end_of_buffer = true,
      }
    end,
    init = function()
      -- Load the colorscheme here.
      vim.opt.termguicolors = true
      vim.o.background = 'dark'
      vim.cmd.colorscheme 'darkvoid'

      -- You can configure highlights by doing something like:
      vim.cmd.hi 'Comment gui=none'
    end,
  },
}
