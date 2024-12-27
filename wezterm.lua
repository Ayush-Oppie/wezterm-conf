-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "Abernathy"

-- Enable the fancy tab bar
config.hide_tab_bar_if_only_one_tab = true

-- Set font size
config.font_size = 18.0

-- Hide window borders
config.window_decorations = "RESIZE"

-- Map Command-Control-F to toggle fullscreen
config.keys = {
	{
		key = "f",
		mods = "CMD|CTRL",
		action = wezterm.action.ToggleFullScreen,
	},
}

-- Uncomment for transparent background (optional)
-- config.window_background_opacity = 0.9
-- and finally, return the configuration to wezterm
return config
