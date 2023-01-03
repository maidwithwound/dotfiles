pcall(require, "luarocks.loader")
gears = require("gears")
awful = require("awful")
require("awful.autofocus")
wibox = require("wibox")
beautiful = require("beautiful")
menubar = require("menubar")
hotkeys_popup = require("awful.hotkeys_popup")
require("awful.hotkeys_popup.keys")

require'uservars'
require'keybinds'
require'rules'
require'signals'

-- {{{ Error handling
-- Check if awesome encountered an error during startup and fell back to
-- another config (This code will only ever execute for the fallback config)
if awesome.startup_errors then
    naughty.notify({ preset = naughty.config.presets.critical,
                     title = "Oops, there were errors during startup!",
                     text = awesome.startup_errors })
end

-- Handle runtime errors after startup
do
    local in_error = false
    awesome.connect_signal("debug::error", function (err)
        -- Make sure we don't go into an endless error loop
        if in_error then return end
        in_error = true

        naughty.notify({ preset = naughty.config.presets.critical,
                         title = "Oops, an error happened!",
                         text = tostring(err) })
        in_error = false
    end)
end
-- }}}


-- Layouts: {{{
awful.layout.layouts = {
    awful.layout.suit.tile.left,
    awful.layout.suit.tile.right,
    awful.layout.suit.max,
    awful.layout.suit.floating,
}

awful.screen.connect_for_each_screen(function(s)
    awful.tag({ "1", "2", "3", "4" }, s, awful.layout.layouts[1])
end)
--- }}}


-- user functions {{{
function make_screenshot(action, delay)
    if action == "full" then
        cmd = os.getenv("HOME") .. "/.config/awesome/shell_scripts/full_screen.sh"
        awful.spawn(cmd)
    elseif action == "clipboard" then
        cmd = os.getenv("HOME") .. "/.config/awesome/shell_scripts/selection.sh"
        awful.spawn(cmd)
    end

end


function volume_control(step)
    local cmd
    if step == 0 then
        cmd = "pactl set-sink-mute @DEFAULT_SINK@ toggle"
    else
        sign = step > 0 and "+" or ""
        cmd = "pactl set-sink-mute @DEFAULT_SINK@ 0 && pactl set-sink-volume @DEFAULT_SINK@ "..sign..tostring(step).."%"
    end
    awful.spawn.with_shell(cmd)
end
-- }}}
