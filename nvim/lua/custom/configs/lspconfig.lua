local lspconfig = require "lspconfig"
local null_ls = require "null-ls"

-- Setup null-ls
require "custom.configs.null-ls"

-- Rust analyzer configuration
lspconfig.rust_analyzer.setup {
  on_attach = function(client, bufnr)
    -- Keybindings or other setup
    -- ...
    require("null-ls").register()
  end,
  capabilities = require("nvchad.configs.lspconfig").capabilities,
  settings = {
    ["rust-analyzer"] = {
      -- Rust analyzer settings
    },
  },
}

-- Add more server configurations if needed
