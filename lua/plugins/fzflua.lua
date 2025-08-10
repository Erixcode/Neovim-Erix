return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  -- dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  dependencies = { "echasnovski/mini.icons" },
  opts = {},
  keys = {
       {
            "<leader>ff",
            function() require('fzf-lua').files() end,
            desc="Find Files in Project Directory"
    },
    { 
            "<leader>fg", 
            function() require('fzf-lua').live_grep() end,
            desc="Find by Grepping Project Directory"
    },
    {
            "<leader>fc",
            function() require('fzf-lua').files({cwd=vim.fn.stdpath("config")}) end,
            desc="Find Files in Current Working Directory"
    },
    {
            "<leader>fb",
            function() require('fzf-lua').builtin() end,
            desc="Displays Every Builtin Fuzzy-Finder"
    },
    {
            "<leader>fr",
            function() require('fzf-lua').resume() end,
            desc="Returns to FzF"
    },
    {
            "<leader>fw",
            function() require('fzf-lua').grep_cword() end,
            desc="Find Current word"
    },
    {
            "<leader><leader>",
            function() require('fzf-lua').buffers() end,
            desc="Find Existing Buffer"
    },
    {
            "<leader>fo",
            function() require('fzf-lua').oldfiles() end,
            desc="Opens Recent Files/Oldfiles"
    },
  }
}
