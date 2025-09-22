return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = { "java", "html", "css", "typescript", "lua", "tsx", "javascript", "python", "ninja", "rst" },
    auto_install = true,
    hightlight = {
      enable = true,
    },
  },
}
