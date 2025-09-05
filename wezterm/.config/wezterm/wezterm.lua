-- Pull in the wezterm API
local wezterm = require("wezterm")
local config = wezterm.config_builder()
local act = wezterm.action

--- Font settings
-- wezterm.font("JetBrainsMono Nerd Font", { weight = "Bold", italic = true })
-- wezterm.font("JetBrains Mono Nerd Font Mono", { weight = "Regular", stretch = "Normal", style = "Normal" })
-- wezterm.font("JetBrainsMono Nerd Font Mono", { weight = "Regular", stretch = "Normal", style = "Normal" }) -- (AKA: JetBrainsMono NFM) /Users/daniel/Library/Fonts/JetBrainsMonoNerdFontMono-Regular.ttf, CoreText
-- wezterm.font("SFMono Nerd Font", { weight = "Regular", stretch = "Normal", style = "Normal" }) -- (AKA: SF Mono) /Users/daniel/Library/Fonts/SFMono Regular Nerd Font Complete.otf, CoreText
config.font = wezterm.font_with_fallback({
	{ family = "JetBrainsMono Nerd Font Mono", weight = "Regular" },
	{ family = "Symbols Nerd Font Mono", weight = "Bold", scale = 1 },
})

config.color_scheme = "NvimDark"
-- config.harfbuzz_features = { "liga=1" }
-- config.custom_block_glyphs = true
-- config.font_family = "JetBrainsMono Nerd Font"
config.font_size = 13
config.line_height = 1.4
config.cell_width = 1

-- Saturate inactive panes
config.inactive_pane_hsb = {
	saturation = 0.7,
	brightness = 0.8,
}
-- Keybindings

-- Cursor
config.animation_fps = 120
config.cursor_blink_ease_in = "EaseOut"
config.cursor_blink_ease_out = "EaseOut"
config.default_cursor_style = "BlinkingBlock"
config.cursor_blink_rate = 500

-- Colors
config.colors = {
	cursor_bg = "#b89b6a",
	cursor_border = "white",
}

-- Appearance
config.window_decorations = "RESIZE" -- Take off the top bar
config.hide_tab_bar_if_only_one_tab = true
config.enable_tab_bar = true
config.window_background_opacity = 0.8
config.window_padding = {
	left = 0,
	right = 0,
	top = 5,
	bottom = 5,
}

-- Keys
config.keys = {
	{ -- New tab
		key = "d",
		mods = "CMD",
		action = wezterm.action.SpawnTab("CurrentPaneDomain"),
	},
}

-- Miscellaneuos
config.max_fps = 120
config.prefer_egl = true

-- Commands
return config
