return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      angularls = {}, -- keep empty to avoid default cmd loading
    },
    setup = {
      angularls = function(_, opts)
        local util = require("lspconfig.util")
        local lspconfig = require("lspconfig")

        local root_dir = util.root_pattern("angular.json", "project.json")(vim.fn.getcwd())
        if not root_dir then
          vim.notify("[angularls] Could not find angular.json", vim.log.levels.ERROR)
          return true -- prevent default
        end

        local ngls_path = root_dir .. "/node_modules/@angular/language-server"
        local tsserver_path = root_dir .. "/node_modules/typescript/lib"

        -- Ensure both paths exist
        if vim.fn.filereadable(ngls_path .. "/index.js") == 0 then
          vim.notify("[angularls] index.js not found in language-server", vim.log.levels.ERROR)
          return true
        end

        if vim.fn.isdirectory(tsserver_path) == 0 then
          vim.notify("[angularls] typescript/lib directory not found", vim.log.levels.ERROR)
          return true
        end

        local cmd = {
          "node",
          ngls_path .. "/index.js",
          "--ngProbeLocations", root_dir,
          "--tsProbeLocations", root_dir,
          "--stdio"
        }

        opts.cmd = cmd
        opts.root_dir = root_dir

        lspconfig.angularls.setup(opts)
        return true -- prevent default setup
      end,
    },
  },
}
