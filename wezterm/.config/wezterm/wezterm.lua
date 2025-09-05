local wezterm = require("wezterm")

local config = {}

-- Para permitir reload sin errores si usas la API experimental
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- ---------------------------------------------------------------------
-- Apariencia
-- ---------------------------------------------------------------------

-- Fondo transparente
config.window_background_opacity = 0.9 -- 0 = transparente, 1 = opaco
config.macos_window_background_blur = 20 -- difuminado del fondo en macOS

-- Fuente y tamaño
config.font = wezterm.font_with_fallback({
	"JetBrains Mono Nerd Font", -- instala con brew: brew install --cask font-jetbrains-mono-nerd-font
	"Fira Code",
})
config.font_size = 14.0

-- ---------------------------------------------------------------------
-- Keybindings
-- ---------------------------------------------------------------------

config.keys = {
	-- ⌘ + D para nueva tab
	{
		key = "d",
		mods = "CMD",
		action = wezterm.action.SpawnTab("DefaultDomain"),
	},
	-- ⌘ + ↵ para dividir pane vertical (ejemplo adicional)
	{
		key = "Enter",
		mods = "CMD",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
}

-- ---------------------------------------------------------------------
-- Cosas opcionales
-- ---------------------------------------------------------------------

-- Quita los botones nativos de macOS si prefieres
-- config.window_decorations = "RESIZE"

-- Colores
-- config.color_scheme = "Tokyo Night"

return config
