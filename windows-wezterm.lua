local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.default_prog = { 'powershell.exe', '-NoLogo' }

config.colors = {
  background = "#FFFCF0", -- Your Paper background
  foreground = "#100F0F", -- High-contrast text
  cursor_bg  = "#949494", -- Your Dark Blue typing indicator
  cursor_fg  = "#FFFCF0",
  selection_bg = "#E6E2CC", -- Subdued tan for highlights
  selection_fg = "#100F0F",

  -- ANSI Colors: These affect folders, git branches, and CLI tools
  ansi = {
    "#100F0F", -- black
    "#AF3029", -- red (Brick)
    "#66800B", -- green (Moss)
    "#AD8301", -- yellow (Ochre)
    "#205EA6", -- blue (Steel)
    "#A02F6F", -- magenta (Plum)
    "#24837B", -- cyan (Teal)
    "#CECDC3", -- white
  },
  brights = {
    "#878580", -- bright black
    "#D14D41", -- bright red
    "#879A39", -- bright green
    "#D0A215", -- bright yellow
    "#4385BE", -- bright blue
    "#CE5D97", -- bright magenta
    "#3AA99F", -- bright cyan
    "#FFFCF0", -- bright white
  },
}

config.window_background_opacity = 1.0 
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false

return config