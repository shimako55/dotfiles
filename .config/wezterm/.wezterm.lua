-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Dracula'

config.font_size = 16.0
config.font = wezterm.font("MesloLGS NF", {weight="Medium", stretch="Normal", style="Normal"})

config.audible_bell = "Disabled"

config.keys = {
  {
    key = 'd',
    mods = 'SHIFT|CTRL',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  {
    key = ']',
    mods = 'CTRL',
    action = wezterm.action.PaneSelect
  },
}

-- and finally, return the configuration to wezterm
return config
