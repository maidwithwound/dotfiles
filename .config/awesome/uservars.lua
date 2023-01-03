current_theme = "default"

terminal = "alacritty"
floating_terminal = "alacritty --class 'floating_term'"

browser = "microsoft-edge"
file_manager = "thunar"
sleep_command = "slock systemctl suspend -i"
autorun_path = "~/.config/awesome/shell_scripts/autorun.sh"
apps_launcher_command = "bash -c '~/.config/awesome/shell_scripts/rofi_cmd.sh'"

telegram = os.getenv("HOME") .. "/.local/bin/Kotatogram"
jdsp = "jamesdsp"

dirs = {
    screenshots = "~/d/pic/screens/"
}

theme = beautiful.get()
screen_width = awful.screen.focused().geometry.width
screen_height = awful.screen.focused().geometry.height

beautiful.notification_icon_size = 20
beautiful.notification_max_height = 20

local theme_dir = os.getenv("HOME") .. "/.config/awesome/themes/default/theme.lua"
beautiful.init(theme_dir)

modkey = "Mod4"

awful.spawn.with_shell(autorun_path)


-- keybinds options: {{{
application_mod = "Mod1" -- alt
-- }}}

-- ui options
------- there's in a theme you can find a variable that named titlebars_enabled, I
------- think you know what that means without me.
sloppy_focus_enable = false
borders_enabled = false;
