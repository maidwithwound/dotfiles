local M = {}
local map = vim.keymap.set
local conf = require("nvconfig").ui.lsp

-- export on_attach & capabilities
M.on_attach = function(client, bufnr)
  local function opts(desc)
    return { buffer = bufnr, desc = "LSP " .. desc }
  end

  map("n", "<c-]>", [[:lua vim.lsp.buf.definition()<CR>]], { desc = "definition", silent = true, noremap = true})
  map("n", "K", [[:lua vim.lsp.buf.hover()<CR>]], { desc = "hover", silent = true, noremap = true})
  map("n", "gi", [[:lua vim.lsp.buf.implementation()<CR>]], { desc = "Go to implementation", silent = true, noremap = true})
  map("n", "<c-k>", [[:lua vim.lsp.buf.signature_help()<CR>]], { desc = "help", silent = true, noremap = true})
  map("n", "1gD", [[:lua vim.lsp.buf.type_definition()<CR>]], { desc = "type definiton", silent = true, noremap = true})
  map("n", "gr", [[:lua vim.lsp.buf.references()<CR>]], { desc = "references", silent = true, noremap = true})
  map("n", "g0", [[:lua vim.lsp.buf.document_symbol()<CR>]], { desc = "document symbol", silent = true, noremap = true})
  map("n", "gW", [[:lua vim.lsp.buf.workspace_symbol()<CR>]], { desc = "workspace symbol", silent = true, noremap = true})
  map("n", "gd", [[:lua vim.lsp.buf.definition()<CR>]], { desc = "definition", silent = true, noremap = true})
  map("n", "ga", [[:lua vim.lsp.buf.code_action()<CR>]], { desc = "code action", silent = true, noremap = true})
  map("n", "g[", vim.diagnostic.goto_prev, { desc = "diagnostics goto prev", silent = true, noremap = true})
  map("n", "g]", [[:lua vim.diagnostic.goto_next()<CR>]], { desc = "diagnostics goto next", silent = true, noremap = true})
  map("n", "gf", [[:lua vim.diagnostic.open_float()<CR>]], { desc = "diagnostics open float", silent=true, noremap=true})
  map("n", "gD", vim.lsp.buf.declaration, {desc = "Go to declaration"})

  map("n", "<leader>sh", vim.lsp.buf.signature_help, opts "Show signature help")
  map("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, opts "Add workspace folder")
  map("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, opts "Remove workspace folder")

  map("n", "<leader>wl", function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, opts "List workspace folders")

  map("n", "gR", function()
    require "nvchad.lsp.renamer"()
  end, opts "NvRenamer")

  -- setup signature popup
  if conf.signature and client.server_capabilities.signatureHelpProvider then
    require("nvchad.lsp.signature").setup(client, bufnr)
  end
end

-- disable semanticTokens
M.on_init = function(client, _)
  if client.supports_method "textDocument/semanticTokens" then
    client.server_capabilities.semanticTokensProvider = nil
  end
end

M.capabilities = vim.lsp.protocol.make_client_capabilities()

M.capabilities.textDocument.completion.completionItem = {
  documentationFormat = { "markdown", "plaintext" },
  snippetSupport = true,
  preselectSupport = true,
  insertReplaceSupport = true,
  labelDetailsSupport = true,
  deprecatedSupport = true,
  commitCharactersSupport = true,
  tagSupport = { valueSet = { 1 } },
  resolveSupport = {
    properties = {
      "documentation",
      "detail",
      "additionalTextEdits",
    },
  },
}

M.defaults = function()
  dofile(vim.g.base46_cache .. "lsp")
  require "nvchad.lsp"

  -- require("lspconfig").pyright.setup {
  --   on_attach = M.on_attach,
  --   capabilities = M.capabilities,
  --   on_init = M.on_init,
  -- }

  require("lspconfig").lua_ls.setup {
    on_attach = M.on_attach,
    capabilities = M.capabilities,
    on_init = M.on_init,

    settings = {
      Lua = {
        diagnostics = {
          globals = { "vim" },
        },
        workspace = {
          library = {
            [vim.fn.expand "$VIMRUNTIME/lua"] = true,
            [vim.fn.expand "$VIMRUNTIME/lua/vim/lsp"] = true,
            [vim.fn.stdpath "data" .. "/lazy/ui/nvchad_types"] = true,
            [vim.fn.stdpath "data" .. "/lazy/lazy.nvim/lua/lazy"] = true,
          },
          maxPreload = 100000,
          preloadFileSize = 10000,
        },
      },
    },
  }
end

return M
