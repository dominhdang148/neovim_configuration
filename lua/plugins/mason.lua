-- Customize Mason plugins
---@type LazySpec
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    registries = {
      "github:nvim-java/mason-registry",
      "github:mason-org/mason-registry",
    },
    opts = {
      ensure_installed = {
        "lua_ls",
        "jdtls", -- Add Java Language Server
        -- add more arguments for adding more language servers
      },
      automatic_installation = false,
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    registries = {
      "github:nvim-java/mason-registry",
      "github:mason-org/mason-registry",
    },
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = {
        "stylua",
        -- add more arguments for adding more null-ls sources
      },
    },
  },
  -- use mason-nvim-dap to configure DAP installations
  {
    "jay-babu/mason-nvim-dap.nvim",
    registries = {
      "github:nvim-java/mason-registry",
      "github:mason-org/mason-registry",
    },
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      ensure_installed = {
        "python",
        "java-debug-adapter", -- Add this line for Java debugging
      },
    },
  },
}
