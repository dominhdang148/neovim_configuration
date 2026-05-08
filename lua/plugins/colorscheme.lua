return {
  {
    "eldritch-theme/eldritch.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
      on_colors = function(colors)
        colors.red = "#eb51d6"
        colors.pink = "#eb51d6"
        colors.purple = "#b75dee"
        colors.magenta = "#b75dee"
        colors.error = "#f33969"
      end,
    },
  },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
      italic_comments = true,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "cyberdream",
    },
  },
}
