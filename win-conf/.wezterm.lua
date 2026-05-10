local wezterm = require 'wezterm'

local config = {}

config.color_scheme = "Tokyo Night"
config.font_size = 12.0

-- quitar tab bar si solo hay una tab
config.hide_tab_bar_if_only_one_tab = true

-- transparencia (opcional)
config.window_background_opacity = 0.92

-- terminal por defecto al abrir
config.default_prog = { "powershell.exe" }

config.launch_menu = {
  {
    label = "PowerShell",
    args = { "powershell.exe" },
  },

  {
    label = "Windows CMD",
    args = { "cmd.exe" },
  },

  {
    label = "Kali WSL",
    args = { "wsl.exe", "-d", "kali-linux" },
  },

  {
    label = "Win Kex WSL",
    args = { "wsl.exe", "-d", "kali-linux", "kex", "--wtstart", "-s" },
  },
}

config.keys = {

  -- Split vertical 
  {
    key = "\\",
    mods = "CTRL|SHIFT",
    action = wezterm.action.SplitVertical {
      domain = "CurrentPaneDomain"
    },
  },

  -- Split horizontal
  {
    key = "Enter",
    mods = "CTRL|SHIFT",
    action = wezterm.action.SplitHorizontal {
      domain = "CurrentPaneDomain"
    },
  },

  -- Navegación entre panes
  {
    key = "h",
    mods = "CTRL|SHIFT",
    action = wezterm.action.ActivatePaneDirection "Left",
  },

  {
    key = "l",
    mods = "CTRL|SHIFT",
    action = wezterm.action.ActivatePaneDirection "Right",
  },

  {
    key = "k",
    mods = "CTRL|SHIFT",
    action = wezterm.action.ActivatePaneDirection "Up",
  },

  {
    key = "j",
    mods = "CTRL|SHIFT",
    action = wezterm.action.ActivatePaneDirection "Down",
  },

  -- Cerrar pane
  {
    key = "w",
    mods = "CTRL|SHIFT",
    action = wezterm.action.CloseCurrentPane {
      confirm = false,
    },
  },

  -- Nuevo tab
  {
    key = "t",
    mods = "CTRL|SHIFT",
    action = wezterm.action.SpawnTab "CurrentPaneDomain",
  },

  -- Cambiar tabs
  {
    key = "[",
    mods = "CTRL|SHIFT",
    action = wezterm.action.ActivateTabRelative(-1),
  },

  {
    key = "]",
    mods = "CTRL|SHIFT",
    action = wezterm.action.ActivateTabRelative(1),
  },

    -- Tab anterior
  {
    key = "LeftArrow",
    mods = "CTRL|SHIFT",
    action = wezterm.action.ActivateTabRelative(-1),
  },

  -- Tab siguiente
  {
    key = "RightArrow",
    mods = "CTRL|SHIFT",
    action = wezterm.action.ActivateTabRelative(1),
  },

    -- Launcher visual
  {
    key = "p",
    mods = "CTRL|SHIFT",
    action = wezterm.action.ShowLauncher,
  },

    -- Navegar entre panes con Ctrl + Flechas

  {
    key = "LeftArrow",
    mods = "CTRL",
    action = wezterm.action.ActivatePaneDirection "Left",
  },

  {
    key = "RightArrow",
    mods = "CTRL",
    action = wezterm.action.ActivatePaneDirection "Right",
  },

  {
    key = "UpArrow",
    mods = "CTRL",
    action = wezterm.action.ActivatePaneDirection "Up",
  },

  {
    key = "DownArrow",
    mods = "CTRL",
    action = wezterm.action.ActivatePaneDirection "Down",
  },

}

return config
