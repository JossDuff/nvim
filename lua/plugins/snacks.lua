-- Configure snacks.nvim explorer to appear on the right side
return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		picker = {
			sources = {
				explorer = {
					layout = { layout = { position = "right" } },
				},
			},
		},
		notifier = {
			notify = {
				style = "compact",
			},
		},
	},
}
