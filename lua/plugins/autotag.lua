return {
  "windwp/nvim-ts-autotag",
  event = "LazyFile",
  config = function()
    require("nvim-ts-autotag").setup()
  end,
}
