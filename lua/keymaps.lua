local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

-- VIM

map('n', '<F3>', ':so ~/Appdata/Local/nvim/init.lua<CR>:so ~/Appdata/Local/nvim/lua/plugins.lua<CR>:so ~/Appdata/Local/nvim/lua/settings.lua<CR>:so ~/Appdata/Local/nvim/lua/keymaps.lua<CR>', { noremap = true })

-- ii exit insert mode
map('i', 'ii', '<Esc>', {noremap = true})

-- PANES

-- move split panes to left/bottom/top/right
map('n', '<A-h>', '<C-W>H', default_opts)
map('n', '<A-j>', '<C-W>J', default_opts)
map('n', '<A-k>', '<C-W>K', default_opts)
map('n', '<A-l>', '<C-W>L', default_opts)

-- move between panes to left/bottom/top/right
map('n', '<C-h>', '<C-w>h', default_opts)
map('n', '<C-j>', '<C-w>j', default_opts)
map('n', '<C-k>', '<C-w>k', default_opts)
map('n', '<C-l>', '<C-w>l', default_opts)



-- ## PLUGINS

-- ## buffers
map('n', '<Tab>', ':BufferLineCycleNext<CR>', default_opts)
map('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', default_opts)

-- ## terminal
-- vim.cmd 'autocmd TermEnter term://*toggleterm#*'
-- map('t', '<C-t>', '<Cmd>exe v:count1 . "ToggleTerm"<CR>', default_opts)
-- map('n', '<C-t>', '<Cmd>exe v:count1 . "ToggleTerm"<CR>', default_opts)
-- map('i', '<C-t>', '<Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>', default_opts)

-- # NVIM-TREE


-- OTHER
-- open file in a text by placing text and gf
-- nnoremap gf :vert winc f<cr>

-- copies filepath to clipboard by pressing yf
-- :nnoremap <silent> yf :let @+=expand('%:p')<CR>

-- copies pwd to clipboard: command yd
-- :nnoremap <silent> yd :let @+=expand('%:p:h')<CR>

-- system buffer shift - Y
--map('v', 'S-Y', '"+y', {})
