local opt = vim.opt
local o = vim.o
local g = vim.g

o.clipboard = "unnamedplus"

-- Indenting
o.expandtab = true
o.shiftwidth = 2
o.smartindent = true
o.tabstop = 2
o.softtabstop = 2

o.cursorline = true
o.cursorlineopt = "number"

-- Numbers
o.number = true
o.numberwidth = 2
o.ruler = false

opt.relativenumber = true

-- line wrap
o.wrap = false

o.mouse = "a"

-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
opt.whichwrap:append "<>[]hl"


-- disable netrw at the very start of your init.lua
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
