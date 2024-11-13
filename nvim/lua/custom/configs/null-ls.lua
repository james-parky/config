local null_ls = require("null-ls")

-- Define formatters and linters for various languages
local sources = {
  -- Formatters
  null_ls.builtins.formatting.stylua,    -- Lua formatter
  null_ls.builtins.formatting.prettier,   -- JavaScript, TypeScript, HTML, CSS, etc.
  null_ls.builtins.formatting.black,      -- Python formatter
  null_ls.builtins.formatting.isort,      -- Python import sorter
  null_ls.builtins.formatting.rustfmt,    -- Rust formatter
  -- null_ls.builtins.formatting.phpcsfixer, -- PHP formatter
  -- null_ls.builtins.formatting.gofmt,      -- Go formatter
  null_ls.builtins.formatting.clang_format, -- C/C++ formatter

  -- Linters
  null_ls.builtins.diagnostics.flake8,    -- Python linter
  null_ls.builtins.diagnostics.eslint,    -- JavaScript, TypeScript linter
  -- null_ls.builtins.diagnostics.rust_clippy, -- Rust linter
  -- null_ls.builtins.diagnostics.phpcs,     -- PHP linter
  -- null_ls.builtins.diagnostics.golint,    -- Go linter

  -- Add more formatters and linters as needed
}

-- Setup null-ls
null_ls.setup({
  sources = sources,
})
