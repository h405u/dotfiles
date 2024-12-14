return {
	{
		"lervag/vimtex",
		lazy = false,
		config = function()
			-- Configuration for the lervag/vimtex plugin
			vim.g.vimtex_view_method = "skim"
			vim.g.vimtex_mappings_disable = { ["n"] = { "K" } } -- disable `K` as it conflicts with LSP hover
			vim.g.vimtex_quickfix_method = vim.fn.executable("pplatex") == 1 and "pplatex" or "latexlog"

			-- Function definition for focusing on terminal application
			local function TexFocusVim()
				vim.fn.system("open -a Alacritty")
				vim.cmd("redraw!")
			end

			-- Autocommand group to handle Vimtex events
			vim.cmd([[
			augroup vimtex_event_focus
			  autocmd!
			  autocmd User VimtexEventViewReverse lua TexFocusVim()
			augroup END
			]])
		end,

		-- keys = {
		-- 	{ "<leader>x", "", group = "vimtex" },
		-- },
	},
}
