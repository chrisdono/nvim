-- set leader key
-- let g:mapleader = "\<Space>"

-- syntax enable                           " Enables syntax highlighing
vim.opt.hidden = true                -- Required to keep multiple buffers open multiple buffers
vim.opt.wrap = false                 -- Display long lines as just one line
vim.opt.encoding = "utf-8"           -- The encoding displayed
vim.opt.pumheight = 10               -- Makes popup menu smaller
vim.opt.fileencoding = "utf-8"       -- The encoding written to file
vim.opt.ruler = true                 -- Show the cursor position all the time
vim.opt.cmdheight = 2                -- More space for displaying messages
-- vim.opt.iskeyword+=-              -- " treat dash separated words as a word text object"
vim.opt.mouse = "a"                    -- Enable your mouse
vim.opt.splitbelow = true            -- Horizontal splits will automatically be below
vim.opt.splitright = true            -- Vertical splits will automatically be to the right
-- vim.opt.t_Co = 256                   -- Support 256 colors
vim.opt.conceallevel = 0             -- So that I can see `` in markdown files
vim.opt.tabstop = 4                  -- Insert 2 spaces for a tab
vim.opt.shiftwidth = 4               -- Change the number of space characters inserted for indentation
vim.opt.smarttab = true              -- Makes tabbing smarter will realize you have 2 vs 4
vim.opt.expandtab = true             -- Converts tabs to spaces
vim.opt.smartindent = true           -- Makes indenting smart
vim.opt.autoindent = true            -- Good auto indent
vim.opt.laststatus = 0               -- Always display the status line
vim.opt.number = true                -- Line numbers
vim.opt.hlsearch = false
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.cursorline = true            -- Enable highlighting of the current line
vim.opt.background = "dark"          -- tell vim what the background color looks like
vim.opt.showtabline = 2              -- Always show tabs (opened tabs in gui)
-- vim.opt.showmode = false             -- We don't need to see things like -- INSERT -- anymore
-- vim.opt.nobackup                  -- This is recommended by coc
-- vim.opt.nowritebackup             -- This is recommended by coc
vim.opt.updatetime = 300             -- Faster completion
vim.opt.timeoutlen = 500             -- By default timeoutlen is 1000 ms
-- vim.opt.formatoptions-=cro        -- Stop newline continution of comments
vim.opt.clipboard = "unnamedplus"    -- Copy paste between vim and everything else
-- vim.opt.colorcolumn = 80             -- show bar at column 80 
vim.opt.relativenumber = true        -- Show relative line numbers
vim.opt.list = true
-- vim.opt.listchars = tab:>-
vim.opt.termguicolors = true
-- vim.cmd([[syntax on]])
vim.opt.syntax = "on"
-- " checks if your terminal has 24-bit color support
-- if (has("termguicolors"))
--     set termguicolors
--     hi LineNr ctermbg=NONE guibg=NONE
-- endif

-- "set autochdir                           " Your working directory will always be the same as your working directory
-- set shell=powershell
-- set shellcmdflag=-NoProfile\ -NoLogo\ -NonInteractive\ -Command
-- set shellpipe=|
-- set shellredir=>

-- au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

-- " You can't stop me
-- cmap w!! w !sudo tee %
