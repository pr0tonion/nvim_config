
local dashboard = require("dashboard")
local home = os.getenv("HOME")

dashboard.setup({
	theme = "hyper", -- or 'doom', 'default'
	config = {
		header = {
			" █████╗ ███████╗██╗   ██╗██╗███████╗███████╗",
			"██╔══██╗██╔════╝██║   ██║██║██╔════╝██╔════╝",
			"███████║███████╗██║   ██║██║███████╗███████╗",
			"██╔══██║╚════██║██║   ██║██║╚════██║╚════██║",
			"██║  ██║███████║╚██████╔╝██║███████║███████║",
			"╚═╝  ╚═╝╚══════╝ ╚═════╝ ╚═╝╚══════╝╚══════╝",
		},
		-- How many recent files to show?
		mru = { limit = 5 },
		-- Items to display. Check `:help dashboard-config` for more options.
		week_header = {
			enable = true,
		},
		shortcut = {
			{ desc = "󰚰 Update", group = "@property", action = "Lazy update", key = "u" },
			{ desc = " Find File", group = "Label", action = "Telescope find_files", key = "f" },
			{ desc = " Find Text", group = "Label", action = "Telescope live_grep", key = "g" },
			{ desc = " Config", group = "Label", action = "edit " .. home .. "/.config/nvim/init.lua", key = "c" },
			{ desc = " Recent Files", group = "Number", action = "Telescope oldfiles", key = "r" },
			{ desc = "󰒲 Quit", group = "String", action = "qa", key = "q" },
		},
		footer = {}, -- You can add a footer here if you like
	},
})
