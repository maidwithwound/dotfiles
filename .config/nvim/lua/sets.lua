local set = vim.opt
set.encoding = "utf-8"

set.completeopt = "menuone,noinsert,noselect"
set.backspace = "indent,eol,start"
set.sts = 2
set.ts = 2
set.sw = 2
set.et = true
set.textwidth = 80
set.signcolumn = "yes"
set.langmap = "ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz"
set.foldlevel = 99
set.cc = "80"
set.updatetime = 300
set.shortmess:append('c')
set.laststatus = 0
set.lcs:append({trail = '·', tab = '▸ ', eol = '↲'})

set.cursorline = true
set.relativenumber = true
set.shiftround = true
set.hidden = true
set.fixendofline = false
set.startofline = true
set.splitbelow = true
set.splitright = true
set.hlsearch = true
set.incsearch = true
set.number = true
set.showmode = false
set.list = true
set.termguicolors = true
set.exrc = true
set.secure = true
set.mouse = "v"

vim.cmd [[
au BufRead,BufNewFile *.md setlocal textwidth=80
au BufRead,BufNewFile *.org setlocal textwidth=80
au BufRead,BufNewFile *.org setlocal nolist
au FileType c,cpp,objc,objcpp call rainbow#load()
au BufEnter * set laststatus=-1
]]
