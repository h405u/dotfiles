return {
	{
		"keaising/im-select.nvim",
		config = function()
			require("im_select").setup({
				default_im_select = "com.apple.keylayout.US",
				default_command = "im-select",
				set_default_events = { "VimEnter", "FocusGained", "InsertLeave" },
			})
		end,
	},
}
