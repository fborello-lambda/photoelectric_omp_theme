-- Place it at:
-- $XDG_CONFIG_HOME/wezterm/wezterm.lua (for X11/Wayland) 
-- or 
-- $HOME/.config/wezterm/wezterm.lua (for all other systems).
local wezterm = require 'wezterm'

return {
  keys = {
    -- Split vertically: current pane becomes top half, new pane at bottom
    {
      key = '"',
      mods = 'CTRL|SHIFT',
      action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
    },

    -- Split horizontally: current pane becomes left half, new pane at right
    {
      key = '%',
      mods = 'CTRL|SHIFT',
      action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
    },
  },
}
