vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- vim.keymap.set("n", "<C-h>", "<cmd>TmuxNavigateLeft<CR>")
-- vim.keymap.set("n", "<C-l>", "<cmd>TmuxNavigateRight<CR>")
-- vim.keymap.set("n", "<C-j>", "<cmd>TmuxNavigateDown<CR>")
-- vim.keymap.set("n", "<C-k>", "<cmd>TmuxNavigateUp<CR>")

-- allows you to move a selcted block in Visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- appends the next line to the end of current
vim.keymap.set("n", "J", "mzJ`z")

-- makes moving less jarring
vim.keymap.set("n", "<C-d>", "25<C-d>zz")
vim.keymap.set("n", "<C-u>", "25<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- allows replacing of highlighted work without clearing buffer
vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
