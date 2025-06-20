-- wezterm.lua
local wezterm = require 'wezterm'


return {
  keys = {
  { key = 'f', mods = 'CMD', action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' } },
  { key = 'Enter', mods = 'CMD', action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' } },
  { key = 'h', mods = 'CMD', action = wezterm.action.ActivatePaneDirection 'Left' },
  { key = 'F12',  action = wezterm.action.ToggleFullScreen },
  { key = 'l', mods = 'CMD', action = wezterm.action.ActivatePaneDirection 'Right' },
  { key = 'k', mods = 'CMD', action = wezterm.action.ActivatePaneDirection 'Up' },
  { key = 'j', mods = 'CMD', action = wezterm.action.ActivatePaneDirection 'Down' },
  { key = 'h', mods = 'ALT', action = wezterm.action.AdjustPaneSize { 'Left', 3 } },
  { key = 'l', mods = 'ALT', action = wezterm.action.AdjustPaneSize { 'Right', 3 } },
  { key = 'j', mods = 'ALT', action = wezterm.action.AdjustPaneSize { 'Up', 3 } },
  { key = 'k', mods = 'ALT', action = wezterm.action.AdjustPaneSize { 'Down', 3 } },
  { key = 'w', mods = 'CMD', action = wezterm.action.CloseCurrentPane { confirm = false } },
},

 font = wezterm.font_with_fallback {
    "JetBrainsMono Nerd Font",
    "Apple Color Emoji",
  },
  font_size = 16.0,
  color_scheme = "Builtin Light",
  default_prog = { "/opt/homebrew/bin/fish", "-l" },
  window_decorations = "NONE",
  hide_tab_bar_if_only_one_tab = true,
  use_fancy_tab_bar = true,

  colors = {
    tab_bar = {
      background = "#f8f8f8",
      active_tab = {
        bg_color = "#ffffff",
        fg_color = "#000000",
        intensity = "Bold",
      },
      inactive_tab = {
        bg_color = "#e0e0e0",
        fg_color = "#666666",
      },
      inactive_tab_hover = {
        bg_color = "#d0d0d0",
        fg_color = "#333333",
        italic = true,
      },
      new_tab = {
        bg_color = "#f5f5f5",
        fg_color = "#888888",
      },
      new_tab_hover = {
        bg_color = "#dddddd",
        fg_color = "#222222",
        italic = true,
      },
    },
  },
}
