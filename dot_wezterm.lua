local wezterm = require("wezterm")
local config = {}

local config = wezterm.config_builder()

config.font = wezterm.font_with_fallback {
  'MesloLGS Nerd Font',
  'Fira Code',
  'JetBrains Mono',
  'SauceCodePro',
}

config.font_size = 13

config.enable_tab_bar = false


config.window_background_opacity = 0.8
config.hide_tab_bar_if_only_one_tab = true


config.audible_bell = "Disabled"
config.check_for_updates = false
config.use_dead_keys = false
config.scrollback_lines = 10000

config.default_cursor_style = "BlinkingBlock"
config.cursor_blink_rate = 500


return config
