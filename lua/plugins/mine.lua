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
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Ensure it loads first
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
}