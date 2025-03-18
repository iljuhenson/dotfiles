-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- config.default_prog = { '/usr/bin/zsh', '-l' }

-- Changing the color scheme
-- config.color_scheme = 'Catppuccin Frappe'

-- Disabling character combining
config.harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' }

-- and finally, return the configuration to wezterm
return config
