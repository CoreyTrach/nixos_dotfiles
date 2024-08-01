return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {},
	config = function(_, opts)
		local wk = require("which-key")
		wk.setup(opts)
		wk.register({
			n = {
				name = "+Highlights",
				h = { ":nohl<CR>", "Clear search highlights" },
			},
			t = {
				name = "+Tabs",
				o = { "<cmd>tabnew<CR>", "Open new tab" },
				x = { "<cmd>tabclose<CR>", "Close current tab" },
				n = { "<cmd>tabn<CR>", "Go to next tab" },
				p = { "<cmd>tabp<CR>", "Go to previous tab" },
				f = { "<cmd>tabnew %<CR>", "Open current buffer in new tab" },
			},
			e = { "<cmd>NvimTreeToggle<CR>", "Toggle file explorer" },
			s = {
				name = "+Split windows",
				v = { "<C-w>v", "Split window vertically" },
				h = { "<C-w>s", "Split window horizontally" },
				e = { "<C-w>=", "Make splits the same size" },
				x = { "<cmd>close<CR>", "Close current split" },
			},
		}, { prefix = "<leader>" })
  end,
}
