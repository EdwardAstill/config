local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- FORCE BASH AS DEFAULT (Linux Standard)
config.default_prog = { '/bin/bash' }

config.colors = {
  background = "#FFFCF0", -- Paper background
  foreground = "#100F0F", -- High-contrast text
  cursor_bg  = "#0015ff", -- Dark Blue typing indicator
  cursor_fg  = "#FFFCF0",
  selection_bg = "#E6E2CC", -- Subdued tan for highlights
  selection_fg = "#100F0F",

  ansi = {
    "#100F0F", "#AF3029", "#66800B", "#AD8301",
    "#205EA6", "#A02F6F", "#24837B", "#CECDC3",
  },
  brights = {
    "#878580", "#D14D41", "#879A39", "#D0A215",
    "#4385BE", "#CE5D97", "#3AA99F", "#FFFCF0",
  },
}

-- Linux/Sway Specifics
config.window_background_opacity = 1.0 
config.window_decorations = "NONE" -- Let Sway handle the borders
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false
config.enable_wayland = true -- Native Wayland support for Fedora Sway

return config