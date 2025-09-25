-- Pull in the wezterm API
local wezterm = require("wezterm")
local config = {}

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.font = wezterm.font("MesloLGS Nerd Font")
config.font_size = 14

-- config.enable_tab_bar = false

--config.window_decorations = "RESIZE"

config.window_background_opacity = 0.9
config.hide_tab_bar_if_only_one_tab = true

config.colors = {
	background = "#011423"
}

-- CONFIGURACIÓN DE TECLAS PARA DIVISIÓN Y REDIMENSIÓN
config.keys = {
  -- DIVISIÓN DE VENTANAS
  -- Dividir horizontal (panel debajo)
  {
    key = 'h',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  -- Dividir vertical (panel a la derecha)
  {
    key = 'v',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  
  -- NAVEGACIÓN ENTRE PANELES
  -- Usar Alt + flechas para moverse entre paneles
  {
    key = 'LeftArrow',
    mods = 'ALT',
    action = wezterm.action.ActivatePaneDirection 'Left',
  },
  {
    key = 'RightArrow',
    mods = 'ALT',
    action = wezterm.action.ActivatePaneDirection 'Right',
  },
  {
    key = 'UpArrow',
    mods = 'ALT',
    action = wezterm.action.ActivatePaneDirection 'Up',
  },
  {
    key = 'DownArrow',
    mods = 'ALT',
    action = wezterm.action.ActivatePaneDirection 'Down',
  },
  
  -- REDIMENSIONAR PANELES
  -- Usar Ctrl+Alt + flechas para redimensionar
  {
    key = 'LeftArrow',
    mods = 'CTRL|ALT',
    action = wezterm.action.AdjustPaneSize { 'Left', 5 },
  },
  {
    key = 'RightArrow',
    mods = 'CTRL|ALT',
    action = wezterm.action.AdjustPaneSize { 'Right', 5 },
  },
  {
    key = 'UpArrow',
    mods = 'CTRL|ALT',
    action = wezterm.action.AdjustPaneSize { 'Up', 5 },
  },
  {
    key = 'DownArrow',
    mods = 'CTRL|ALT',
    action = wezterm.action.AdjustPaneSize { 'Down', 5 },
  },
  
  -- CERRAR PANEL ACTUAL
  {
    key = 'w',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.CloseCurrentPane { confirm = true },
  },
  
  -- ALTERNAR ZOOM DEL PANEL (maximizar/minimizar panel actual)
  {
    key = 'z',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.TogglePaneZoomState,
  },
  
  -- ROTAR PANELES
  {
    key = 'r',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.RotatePanes 'Clockwise',
  },
  
  -- CREAR NUEVA PESTAÑA
  {
    key = 't',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.SpawnTab 'CurrentPaneDomain',
  },
  
  -- NAVEGACIÓN ENTRE PESTAÑAS
  {
    key = 'Tab',
    mods = 'CTRL',
    action = wezterm.action.ActivateTabRelative(1),
  },
  {
    key = 'Tab',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.ActivateTabRelative(-1),
  },
}

-- Configuración adicional para mejor experiencia
config.audible_bell = "Disabled"
config.check_for_updates = false
config.use_dead_keys = false
config.scrollback_lines = 10000

-- Configuración del cursor
config.default_cursor_style = 'BlinkingBlock'
config.cursor_blink_rate = 500

-- Configuración de colores personalizados (opcional)
config.colors = {
  -- Color del borde del panel activo
  split = '#7aa2f7',
}

return config
