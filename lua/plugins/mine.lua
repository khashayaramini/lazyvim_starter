return {
  {
    "xiyaowong/transparent.nvim",
  },
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function()
      local logo = [[
██████╗░░█████╗░██╗░░░██╗███████╗███╗░░██╗
██╔══██╗██╔══██╗██║░░░██║██╔════╝████╗░██║
██████╔╝███████║╚██╗░██╔╝█████╗░░██╔██╗██║
██╔══██╗██╔══██║░╚████╔╝░██╔══╝░░██║╚████║
██║░░██║██║░░██║░░╚██╔╝░░███████╗██║░╚███║
╚═╝░░╚═╝╚═╝░░╚═╝░░░╚═╝░░░╚══════╝╚═╝░░╚══╝
      ]]

      logo = string.rep("\n", 8) .. logo .. "\n\n"

      local opts = {
        theme = "doom",
        hide = {
          statusline = false,
        },
        config = {
          header = vim.split(logo, "\n"),
          center = {
            {
              action = "qa",
              desc = "yolo",
              icon = "",
              key = "q",
            },
          },
        },
      }
      return opts
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "black_is_the_color",
    },
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      background_colour = "#000000",
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      background_colour = "#000000",
    },
  },
  {
    "cocopon/iceberg.vim",
  },
  {
    "plainfingers/black_is_the_color",
  },
}
