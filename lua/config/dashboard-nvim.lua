
local dashboard = require("dashboard")
local home = os.getenv("HOME")

dashboard.setup({
	theme = "hyper", -- or 'doom', 'default'
	config = {
		-- Example Header 1 (Simple Text)
		header = {
			[[    __                        __ ]],
			[[   / /   ____   __  __ _____/ /_]],
			[[  / /   / __ \ / / / // ___/ __/]],
			[[ / /___/ /_/ // /_/ /(__  ) /_  ]],
			[[/_____/\____/ \__,_//____/\__/  ]],
			[[                                 ]],
		},

		-- Example Header 2 (Doom Style - requires 'doom' theme usually)
		-- header = {
		-- 	[[=============================================================================]],
		-- 	[[                                                                             ]],
		-- 	[[ ███╗   ███╗ ███████╗ ██████╗ ██████╗ ██╗   ██╗ ██████╗ ███████╗ ███████╗    ]],
		-- 	[[ ████╗ ████║ ██╔════╝██╔════╝██╔═══██╗██║   ██║██╔════╝ ██╔════╝ ██╔════╝    ]],
		-- 	[[ ██╔████╔██║ ███████╗██║     ██║   ██║██║   ██║██║  ███╗███████╗ ███████╗    ]],
		-- 	[[ ██║╚██╔╝██║ ╚════██║██║     ██║   ██║██║   ██║██║   ██║╚════██║ ╚════██║    ]],
		-- 	[[ ██║ ╚═╝ ██║ ███████║╚██████╗╚██████╔╝╚██████╔╝╚██████╔╝███████║ ███████║    ]],
		-- 	[[ ╚═╝     ╚═╝ ╚══════╝ ╚═════╝ ╚═════╝  ╚═════╝  ╚═════╝ ╚══════╝ ╚══════╝    ]],
		-- 	[[                                                                             ]],
		-- 	[[=============================================================================]],
		-- },

		-- Example Header 3 (Minimalist)
		-- header = {
		-- 	[[ _   _       _                ]],
		-- 	[[| \ | | ___ | | _____ _ __ ___ ]],
		-- 	[[|  \| |/ _ \| |/ / _ \ '_ ` _ \]],
		-- 	[[| |\  | (_) |   <  __/ | | | | |]],
		-- 	[[|_| \_|\___/|_|\_\___|_| |_| |_|]],
		-- 	[[                                ]],
		-- },

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
