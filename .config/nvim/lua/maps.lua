function map(mode, keys, action, options)
  if options == nil then
    options = {}
  end
  vim.api.nvim_set_keymap(mode, keys, action, options)
end
map("n", "j", "jzz", {noremap = true})
map("n", "k", "kzz", {noremap = true})
map("n", "G", "Gzz", {noremap = true})
map("n", "gg", "ggzz", {noremap = true})
map("n", "}", "}zz", {noremap = true})
map("n", "{", "{zz", {noremap = true})
map("n", "(", [[:bp<CR>]])
map("n", ")", [[:bn<CR>]])
map("n", "dq", [[:bd<CR>]])
map("n", ";vv", [[:tabe $MYVIMRC<CR>]])
map("n", ";V", [[:source $MYVIMRC<CR>]])
map("n", ";se", [[:setlocal spell! spelllang=en_us<CR>]])
map("n", ";sr", [[:setlocal spell! spelllang=ru_rj<CR>]])
map("n", ";ss", [[:!clear && shellcheck %<CR>]])
map("n", ";;", [[:NERDTreeToggle<CR>]])
map("n", ";:", [[:TagbarOpen fc<CR>]])
map("n", ";e", "vipgg")
map("n", ";se", [[:s/\([^=]*\)\s\+=\s\+\([^;]*\)/\2 = \1]])
map("n", "S", [[:%s//g<Left><Left>]], {noremap = true})
map("n", "s", [[<S-v>:s//g<Left><Left>]], {noremap = true})
map("v", "s", [[:s//g<Left><Left>]], {noremap = true})
map("n", "<C-s>", [[:wa<CR>]])
map("n", "<M-h>", "<C-w>h")
map("n", "<M-j>", "<C-w>j")
map("n", "<M-k>", "<C-w>k")
map("n", "<M-l>", "<C-w>l")
map("n", "<C-M-H>", "2<C-w><")
map("n", "<C-M-J>", "<C-w>-")
map("n", "<C-M-K>", "<C-w>+")
map("n", "<C-M-L>", "2<C-w>>")
map("n", "<esc><esc>", [[:noh<CR>]])
map("n", "<M-o>", "<C-W>w")
map("v", "<M-o>", "<C-W>w")
map("i", "<M-o>", "<esc><C-W>w")
map("t", "<M-o>", "<esc><C-W>w")
map("c", "<M-p>", "<up>")
map("c", "<M-n>", "<down>")
map("c", "<M-k>", "<up>")
map("c", "<M-l>", "<down>")


-- code navigation shortcuts
-- you can find more in :help lsp
map("n", "<c-]>", [[:lua vim.lsp.buf.definition()<CR>]], {silent = true, noremap = true})
map("n", "K", [[:lua vim.lsp.buf.hover()<CR>]], {silent = true, noremap = true})
map("n", "gD", [[:lua vim.lsp.buf.implementation()<CR>]], {silent = true, noremap = true})
map("n", "<c-k>", [[:lua vim.lsp.buf.signature_help()<CR>]], {silent = true, noremap = true})
map("n", "1gD", [[:lua vim.lsp.buf.type_definition()<CR>]], {silent = true, noremap = true})
map("n", "gr", [[:lua vim.lsp.buf.references()<CR>]], {silent = true, noremap = true})
map("n", "g0", [[:lua vim.lsp.buf.document_symbol()<CR>]], {silent = true, noremap = true})
map("n", "gW", [[:lua vim.lsp.buf.workspace_symbol()<CR>]], {silent = true, noremap = true})
map("n", "gd", [[:lua vim.lsp.buf.definition()<CR>]], {silent = true, noremap = true})
map("n", "ga", [[:lua vim.lsp.buf.code_action()<CR>]], {silent = true, noremap = true})
map("n", "g[", [[:lua vim.diagnostics.goto_prev()<CR>]], {silent = true, noremap = true})
map("n", "g]", [[:lua vim.diagnostics.goto_next()<CR>]], {silent = true, noremap = true})
map("n", "gf", [[:lua vim.diagnostic.open_float()<CR>]], {silent=true, noremap=true})

map("n", ";hw", [[:HopWord<CR>]])
map("n", ";hl", [[:HopChar1<CR>]])
