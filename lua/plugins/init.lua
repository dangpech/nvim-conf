return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
        "vim", "lua", "vimdoc",
        "html", "css",
        "c", "bash", "cmake", "cpp", "csv",
        "dockerfile", "git_config", "git_rebase",
        "go", "gomod", "gosum", "gotmpl", "gowork",
        "java", "javascript", "json5", "make", "rust",
        "sql", "typescript", "xml", "yaml"
  		},
  	},
  },

  {
    "lewis6991/gitsigns.nvim",
    config = function()
        require("gitsigns").setup()
    end
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
    config = function ()
      require("ibl").setup()
    end
  }

  -- {
  --   "nvim-tree/nvim-tree.lua",
  --   version = "",
  --   lazy = false,
  --   dependencies = {
  --     "nvim-tree/nvim-web-devicons",
  --   },
  --   config = function ()
  --     require("nvim-tree").setup {
  --       sort = {
  --         sorter = "case_sensitive",
  --       },
  --       view = {
  --         width = 30,
  --       },
  --       renderer = {
  --         group_empty = true,
  --       },
  --       filters = {
  --         dotfiles = true,
  --       },
  --     }
  --   end
  -- }
}
