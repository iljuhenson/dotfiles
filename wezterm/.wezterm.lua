-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- config.default_prog = { '/usr/bin/zsh', '-l' }

-- Changing the color scheme
-- config.color_scheme = 'Catppuccin Frappe'

-- Disabling character combining
config.harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' }
-- config.window_background_opacity = 0.8
--
config.font_size = 19
config.hide_tab_bar_if_only_one_tab = true

return config
