-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = 'Dracula'
-- config.color_scheme = "Poimandres"
--
local poimandres = require("colors/poimandres").setup({})
config.colors = poimandres

config.window_decorations = "NONE"

config.font_size = 16.0

config.font = wezterm.font_with_fallback({
	"HackGen35 Console NF",
	"MesloLGS NF",
})

config.audible_bell = "Disabled"

config.keys = {
	{
		key = "d",
		mods = "SHIFT|CTRL",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "]",
		mods = "CTRL",
		action = wezterm.action.PaneSelect,
	},
	{
		key = "n",
		mods = "SHIFT|CTRL",
		action = wezterm.action.ToggleFullScreen,
	},
}

-- and finally, return the configuration to wezterm
return config
