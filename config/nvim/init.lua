--vim.cmd.colorscheme("eldar")

vim.opt.hidden = true

vim.opt.tabstop = 2
vim.opt.copyindent = true
vim.opt.autoindent = true
vim.opt.smartcase = true
vim.opt.smarttab = true
vim.opt.backspace = { "indent", "eol", "start" }
vim.opt.shiftwidth = 2
vim.opt.shiftround = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorlineopt = "number"
vim.opt.cursorline = true

vim.opt.showmatch = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.wildmenu = true
vim.opt.wrap = true
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 20
vim.opt.foldlevelstart = 20

vim.opt.autochdir = true

-- gutter space for lsp info on left
vim.opt.signcolumn = "yes"
-- increased for lsp code actions
vim.opt.updatetime = 100

vim.api.nvim_create_autocmd("TextYankPost", {
	group = vim.api.nvim_create_augroup("highlight_yank", {}),
	desc = "highlight yanked text",
	pattern = "*",
	callback = function()
		vim.highlight.on_yank { higroup = "IncSearch", timeout = 500 }
	end,
})

vim.opt.completeopt = { "menu" }

vim.g.netrw_bufsettings = ""
vim.g.netrw_winsize = 25
vim.g.netrw_banner = 0  -- hide banner
vim.g.netrw_liststyle = 3
vim.g.netrw_keepdir = 1
vim.g.netrw_browse_split = 0  -- default: open in same window
vim.g.netrw_list_hide= [[\(^\|\s\s\)\zs\.\S\+]]


require "lspconfig_setup"
