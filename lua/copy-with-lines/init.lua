
-- This function will copy highlighted text with line numbers and file name
function CopyWithLineNumbers (config)
	local startline = config.line1 - 1;
	local endline = config.line2;
	-- buffer containing selected lines
	local buf = vim.api.nvim_buf_get_lines(0, startline, endline, false);
	local filepath = vim.fn.expand('%')
	local result = "File: " .. filepath;
	for i, line in ipairs(buf) do
		result = result .. "\n" .. (i + startline - 1) .. ": " .. line
	end
	vim.fn.setreg('*', result);
end

return {
	CopyWithLineNumbers=CopyWithLineNumbers
}
