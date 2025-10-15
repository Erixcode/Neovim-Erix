-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = ","
vim.g.maplocalleader = "\\"

require("config.options")

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "plugins" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "kanagawa" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})

require('mini.icons').setup()
require("config.keymaps")

require("neovim-cursor").setup({
  -- Keybinding for toggling cursor agent
  keybinding = "<leader>ai",

  -- Terminal split configuration
  split = {
    position = "right",  -- "right", "left", "top", "bottom"
    size = 0.4,          -- 50% of editor width/height (0.0-1.0)
  },

  -- CLI command to run
  command = "cursor agent",

  -- Terminal callbacks (optional)
  term_opts = {
    on_open = function()
      -- Called when terminal opens
      print("Cursor agent started")
    end,
    on_close = function(exit_code)
      -- Called when terminal closes
      print("Cursor agent exited with code: " .. exit_code)
    end,
  },
})

--For Videos Recording
vim.cmd("ShowkeysToggle");
