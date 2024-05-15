require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")
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
map("n", ";se", [[:setlocal spell! spelllang=en_us<CR>]], { desc = "en_us spellcheck" })
map("n", ";sr", [[:setlocal spell! spelllang=ru_rj<CR>]], { desc = "ru_rj spellcheck" })
map("n", ";ss", [[:!clear && shellcheck %<CR>]], { desc = "clear spellcheck" })
map("n", ";;", [[:NvimTreeToggle<CR>]])
map("n", ";:", [[:TagbarOpen fc<CR>]])
map("n", ";e", "vipgg")
map("n", ";se", [[:s/\([^=]*\)\s\+=\s\+\([^;]*\)/\2 = \1]])
map("n", "S", [[:%s//g<Left><Left>]], {noremap = true})
map("n", "s", [[<S-v>:s//g<Left><Left>]], {noremap = true})
map("v", "s", [[:s//g<Left><Left>]], {noremap = true})
map("n", "<leader>cw", [[:cclose<CR>]], { desc = "close quickfix window" })

