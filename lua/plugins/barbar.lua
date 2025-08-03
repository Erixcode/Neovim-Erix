return {
  {'romgrk/barbar.nvim',
    dependencies = {
      --'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
       animation = true,
      -- insert_at_start = true,
       icons = {
       -- Configure the icons on the bufferline when modified or pinned.
        -- Supports all the base icon options.
        modified = {button = '●'},
        inactive = {button = '×'},
        pinned = {button = '', filename = true},
      },
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },
}
