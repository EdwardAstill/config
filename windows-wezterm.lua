local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- [ 1. SHELL CONFIG ]
config.default_prog = { 'powershell.exe', '-NoLogo' }

-- [ 2. APPEARANCE & COLORS ]
config.colors = {
  background = "#FFFCF0", 
  foreground = "#100F0F", 
  cursor_bg   = "#949494", 
  cursor_fg   = "#FFFCF0",
  selection_bg = "#E6E2CC", 
  selection_fg = "#100F0F",
  ansi = { "#100F0F", "#AF3029", "#66800B", "#AD8301", "#205EA6", "#A02F6F", "#24837B", "#CECDC3" },
  brights = { "#878580", "#D14D41", "#879A39", "#D0A215", "#4385BE", "#CE5D97", "#3AA99F", "#FFFCF0" },
}

config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.window_close_confirmation = 'NeverPrompt'
config.window_padding = { left = 15, right = 15, top = 15, bottom = 15 }

-- [ 3. WINDOW SIZING & POSITIONING ]
config.initial_cols = 120
config.initial_rows = 30
config.prefer_to_spawn_tabs = false

wezterm.on('gui-startup', function(spawn_args)
  -- We must use 'spawn_args' here to ensure the "y" command 
  -- from your AHK script actually gets executed.
  local tab, pane, window = wezterm.mux.spawn_window(spawn_args or {
    position = { x = 350, y = 150 },
  })
  
  -- This forces the specific position for the window we just created
  window:gui_window():set_position(350, 150)
end)

return config