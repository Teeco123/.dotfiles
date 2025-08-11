local wezterm = require("wezterm")
local mux = wezterm.mux
local act = wezterm.action
local config = {}

config.color_scheme = "ChallengerDeep"
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}
config.window_background_opacity = 0.7
config.macos_window_background_blur = 30
config.font_size = 16
config.text_background_opacity = 0.7
config.use_fancy_tab_bar = false
config.colors = {
	tab_bar = {
		background = "#1e1c31",
	},
}

wezterm.on("gui-startup", function(cmd)
	--
	-- Starting default workspace
	--
	local defaultTab, defaultPane, defaultWindow = mux.spawn_window({
		workspace = "Default",
		cwd = wezterm.home_dir,
	})
	defaultWindow:gui_window():maximize()

	--
	-- Current project workspace
	--
	local tabDS1, paneDS1, windowDS = mux.spawn_window({
		workspace = "Current project",
		cwd = "/Users/kacper/Developer/sugarspice-shop/",
	})
	tabDS1:set_title("nvim")
	tabDS1:activate()
	paneDS1:send_text("nix-develop\n")
	paneDS1:send_text("nvim\n")

	local tabDS5, paneDS5 = windowDS:spawn_tab({
		cwd = "/Users/kacper/Developer/sugarspice-shop/",
	})
	tabDS5:set_title("console")
	paneDS5:send_text("nix-develop\n")

	local tabDS6, paneDS6 = windowDS:spawn_tab({
		cwd = "/Users/kacper/Developer/sugarspice-shop/",
	})
	tabDS6:set_title("stripe")
	paneDS6:send_text("nix-develop\n")
	paneDS6:send_text("stripe listen --forward-to localhost:5173/api/stripe-cli")

	local tabDS2, paneDS2 = windowDS:spawn_tab({
		cwd = "/Users/kacper/Developer/sugarspice-shop/",
	})
	tabDS2:set_title("server")
	paneDS2:send_text("nix-develop\n")
	paneDS2:send_text("npm run dev -- --host")

	local tabDS3, paneDS3 = windowDS:spawn_tab({
		cwd = "/Users/kacper/Developer/sugarspice-shop/",
	})
	tabDS3:set_title("db")
	paneDS3:send_text("nix-develop\n")
	paneDS3:send_text("npm run db:start")

	local tabDS4, paneDS4 = windowDS:spawn_tab({
		cwd = "/Users/kacper/Developer/sugarspice-shop/",
	})
	tabDS4:set_title("studio")
	paneDS4:send_text("nix-develop\n")
	paneDS4:send_text("npm run db:studio")

	-- Set default workspace
	mux.set_active_workspace("Default")
end)

wezterm.on("update-right-status", function(window, pane)
	window:set_right_status(window:active_workspace())
end)

config.keys = {
	{
		key = "9",
		mods = "ALT",
		action = act.ShowLauncherArgs({ flags = "FUZZY|WORKSPACES" }),
	},
	{ key = "]", mods = "CTRL", action = act.SwitchWorkspaceRelative(1) },
	{ key = "[", mods = "CTRL", action = act.SwitchWorkspaceRelative(-1) },
}

return config
