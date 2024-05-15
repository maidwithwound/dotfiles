local configs = require("nvchad.configs.lspconfig")
-- EXAMPLE 
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "pyright" }

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- typescript
lspconfig.omnisharp.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  cmd = { "dotnet", vim.fn.stdpath "data" .. "/mason/packages/omnisharp/libexec/OmniSharp.dll"},
  enable_import_completion = true,
  organize_imports_on_format = true,
  enable_roslyn_analyzers = true,
  root_dir = function()
    return vim.loop.cwd()
  end,
}

