-- helper functions

local linux = false

function GetUndoDir()
    local dir = os.getenv("UserProfile")
    if dir ~= nil then
        return dir
    end
    -- linux undo tree dir
    dir = os.getenv("HOME")
    if dir ~= nil then
        linux = true
        return dir
    end
end

--config values

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = GetUndoDir() .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"


local powershell_options = {
    shell = "nu",
    shellcmdflag = "-c",
    shellquote = "",
    shellxquote = "",
}
if linux == true then
    vim.opt.sh = "nu"
else
    for option, value in pairs(powershell_options) do
        vim.opt[option] = value
    end
end
