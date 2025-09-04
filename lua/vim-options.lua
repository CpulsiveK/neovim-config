vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.opt.number = true
vim.g.mapleader = " "

-- Always use system clipboard in WSL Neovim
if vim.fn.system('uname -r'):match("microsoft") then
  vim.opt.clipboard = "unnamedplus"
end

-- Auto-close Neovim if Neo-tree is the last window
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "neo-tree://*",
  callback = function()
    if #vim.api.nvim_list_wins() == 1 then
      vim.cmd("quit")
    end
  end,
})


