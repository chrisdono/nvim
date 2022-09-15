local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- *****************************
-- Normal --
-- *****************************
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- Easy Caps -- removing since it conflicts with page up movement
-- keymap("n", "<c-u>", "viwU<Esc>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- *****************************
-- Insert --
-- *****************************
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)
keymap("i", "jj", "<ESC>", opts)

-- Easy Caps
-- keymap("i", "<c-u>", "<Esc>viwU", opts)

-- *****************************
-- Visual --
-- *****************************
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- *****************************
-- Terminal --
-- *****************************
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
-- keymap("n", "<C-p>", "<cmd>lua require'telescope.builtin'.git_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<C-p>", "<cmd>lua require'telescope.builtin'.git_files()<cr>", opts)
keymap("n", "<C-f>", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<leader>gg", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<leader>gf", "<cmd>Telescope grep_string<cr>", opts)
-- keymap("n", "<leader>g/", "<cmd>Telescope grep_last_search<cr>", opts)

-- keymap("<leader>ps", function() require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")}), opts)



-- " <TAB>: completion.
-- inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
-- 
-- 
-- 
-- nnoremap <Leader>o o<Esc>^Da
-- nnoremap <Leader>O O<Esc>^Da
-- 
-- nmap <leader>gd <Plug>(coc-definition)
-- nmap <leader>gr <Plug>(coc-references)
-- nmap <leader>gi <Plug>(coc-implementation)
-- nnoremap <C-p> :GFiles<CR>
-- "vim-ripgrep
-- nnoremap <leader>gf :Rgf<CR> 
-- 
-- " open new vertical window
-- nmap <Leader>v :vs ene<CR>
-- 
-- " go to symbol with Coc
-- " nnoremap <leader>gi  :exe 'CocList -I --normal --input='.expand('<cword>').' symbols'<CR>
-- nnoremap <leader>gs :exe 'CocSearch '.expand('<cword>').' '<CR>

