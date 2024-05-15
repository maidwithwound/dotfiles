require "nvchad.options"

local set = vim.opt

set.cursorline = true
set.relativenumber = true

set.lcs:append({trail = '·', tab = '▸ ', eol = '↲'})
set.list = true
