-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

--[[
-- side notes here
<C-> ctrl button
<S-> shift button
-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

use :set formatoptions-=cro
to prevent new comment lines from starting in lua
--]]
---------------------
-- General Keymaps
---------------------
-- vscode movement
-- ctrl v to paste
-- keymap.set("i", "<C-v>", "<C-O>u<CR>")

-- ctrl z to undo last edit
keymap.set("i", "<C-z>", "<C-O>u<CR>")
keymap.set("n", "<C-z>", "u")

-- ctrl y to redo
keymap.set("i", "<C-y>", "<C-O><CR>")
keymap.set("n", "<C-y>", "<C-R>")

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- visual shifts

-- Stay in indent mode
keymap.set("v", "<", "<gv") -- stay in visual mode when shifting
keymap.set("v", ">", ">gv")

keymap.set("x", "<", "<gv") -- stay in visual mode when shifting
keymap.set("x", ">", ">gv")

keymap.set("v", "<A-k>", ":m-2<CR>gv=gv") -- shift visual block up
keymap.set("v", "<A-up>", ":m-2<CR>gv=gv") -- shift visual block up
keymap.set("v", "<A-j>", ":m+1<CR>gv=gv") -- shift visual block down
keymap.set("v", "<A-down>", ":m+1<CR>gv=gv") -- shift visual block down

keymap.set("x", "<A-k>", ":move '<-2<CR>gv-gv") -- shift visual block up
keymap.set("x", "<A-up>", ":m-2<CR>gv=gv") -- shift visual block up
keymap.set("x", "<A-j>", ":move '>+2<CR>gv-gv") -- shift visual block down
keymap.set("x", "<A-down>", ":move '>+2<CR>gv-gv") -- shift visual block down

----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "open file [E]xplorer" }) -- toggle file explorer
keymap.set("n", "<leader>f", ":NvimTreeFocus<CR>", { desc = "[F]ocus] file explorer" }) -- focuses file explorer

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
-- telescope git commands (not on youtube nvim video)
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server (not on youtube nvim video)
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary

-- telekasten note taking keymaps here
-- Launch panel if nothing is typed after <leader>z
keymap.set("n", "<leader>z", "<cmd>Telekasten panel<CR>")

-- Most used telekasten functions
keymap.set("n", "<leader>zf", "<cmd>Telekasten find_notes<CR>")
keymap.set("n", "<leader>zg", "<cmd>Telekasten search_notes<CR>")
keymap.set("n", "<leader>zd", "<cmd>Telekasten goto_today<CR>")
keymap.set("n", "<leader>zz", "<cmd>Telekasten follow_link<CR>")
keymap.set("n", "<leader>zn", "<cmd>Telekasten new_note<CR>")
keymap.set("n", "<leader>zc", "<cmd>Telekasten show_calendar<CR>")
keymap.set("n", "<leader>zb", "<cmd>Telekasten show_backlinks<CR>")
keymap.set("n", "<leader>zI", "<cmd>Telekasten insert_img_link<CR>")
-- markdown preview keymaps
keymap.set("n", "<leader>zs", "<cmd>MarkdownPreview<CR>")
-- markdown to go backwards/ previous file with a backspace
keymap.set("n", "<bs>", ":edit #<cr>", { silent = true })
