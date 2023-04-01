
if vim.g.loaded_nvim_copy_with_lines then
	return
end
vim.g.loaded_nvim_copy_with_lines = true

local c = require('copy-with-lines');

vim.api.nvim_create_user_command("CopyWithLineNumbers", c.CopyWithLineNumbers, {
	range=true,
	desc="Copy text with line numbers"
})
