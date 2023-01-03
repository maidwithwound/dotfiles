-- {{{ Rules
-- Rules to apply to new clients (through the "manage" signal).
awful.rules.rules = {
    -- All clients will match this rule.
    { rule = { },
      properties = { border_width = beautiful.border_width,
                     border_color = beautiful.border_normal,
                     focus = awful.client.focus.filter,
                     raise = true,
                     keys = clientkeys,
                     buttons = clientbuttons,
                     screen = awful.screen.preferred,
                     placement = awful.placement.no_overlap+awful.placement.no_offscreen
     }
    },

    -- Floating clients.
    { rule_any = {
        instance = {
          "DTA",  -- Firefox addon DownThemAll.
          "copyq",  -- Includes session name in class.
          "pinentry",
          "floating_term"
        },
        class = {
          "Gpick",
          "Lxappearance",
          "Nm-connection-editor",
          "File-roller",
          "fst",
          "Nvidia-settings",
          "Arandr",
          "Blueman-manager",
          "Gpick",
          "Kruler",
          "MessageWin",
          "Sxiv",
          "Tor Browser",
          "Wpa_gui",
          "veromix",
          "xtightvncviewer"},
        name = {
          "Event Tester",  -- xev.
        },
        role = {
          "AlarmWindow",  -- Thunderbird's calendar.
          "ConfigManager",  -- Thunderbird's about:config.
          "pop-up",       -- e.g. Google Chrome's (detached) Developer Tools.
          "GtkFileChooserDialog",
          "conversation",
        },
        type = {
            "dialog",
        }
      }, properties = { floating = true }},
      {
          rule_any = {
            class = {"PureRef"},
          },
          properties = { floating = true, ontop=true }
      },
      { 
          rule_any = {
              class = {
                  "mpv",
              },
              name = {
                "Picture in Picture"
              }
          }, 
          properties = {floating = true, sticky = true, ontop=true}},


    -- Fullscreen clients
    {
        rule_any = {
            class = {
                "lt-love",
                "portal2_linux",
                "csgo_linux64",
                "EtG.x86_64",
                "factorio",
                "dota2",
                "Terraria.bin.x86",
                "dontstarve_steam",
                "Game.exe",
                "LauncherC0.exe"
            },
            instance = {
                "Game.exe",
                "LauncherC0.exe",
                "synthetik.exe",
            },
        },
        properties = { fullscreen = true }
    },

    -- -- Unfocusable clients (unless clicked with the mouse)
    -- -- If you want to prevent focusing even when clicking them, you need to
    -- -- modify the left click client mouse bind in keys.lua
    {
        rule_any = {
            class = {
                "scratchpad",
            },
        },
        properties = { focusable = false }
    },

    -- Centered clients
    {
        rule_any = {
            type = {
                "dialog",
            },
            class = {
                "Steam",
                "discord",
                "music",
                "markdown_input",
                "scratchpad",
            },
            instance = {
                "music",
                "markdown_input",
                "scratchpad",
            },
            role = {
                "GtkFileChooserDialog",
                "conversation",
            }
        },
        properties = { placement = centered_client_placement },
    },

    -- Titlebars OFF (explicitly)
    {
        rule_any = {
            instance = {
                "install league of legends (riot client live).exe",
                "gw2-64.exe",
                "battle.net.exe",
                "riotclientservices.exe",
                "leagueclientux.exe",
                "riotclientux.exe",
                "leagueclient.exe",
                "^editor$",
                "markdown_input",
                "Game.exe",
                "LauncherC0.exe"
                -- "sai2.exe"
            },
            class = {
                "qutebrowser",
                "Sublime_text",
                "Subl3",
                --"discord",
                --"TelegramDesktop",
                "Nightly",
                "Steam",
                "Lutris",
                "Chromium",
                "^editor$",
                "markdown_input",
                -- "Thunderbird",
            },
            type = {
              "splash"
            },
            name = {
                "^discord.com is sharing your screen.$" -- Discord (running in browser) screen sharing popup
            }
        },
        callback = function(c)
            decorations.hide(c)
        end
    },

    -- Titlebars ON (explicitly)
    {
        rule_any = {
            type = {
                "dialog",
            },
            role = {
                "conversation",
            }
        },
        callback = function(c)
            decorations.show(c)
        end
    },

    -- "Needy": Clients that steal focus when they are urgent
    {
        rule_any = {
            class = {
                -- "TelegramDesktop",
                "Nightly",
            },
            type = {
                "dialog",
            },
        },
        callback = function (c)
            c:connect_signal("property::urgent", function ()
                if c.urgent then
                    c:jump_to()
                end
            end)
        end
    },

    -- File chooser dialog
    {
        rule_any = { role = { "GtkFileChooserDialog" } },
        properties = { floating = true, width = screen_width * 0.55, height = screen_height * 0.65 }
    },
    -- Xfdesktop sticky.
    {
        rule_any = { class = { "Xfdesktop" } },
        properties = { sticky = true, focusable = false }
    },

    -- Pavucontrol
    {
        rule_any = { class = { "Pavucontrol" } },
        properties = { floating = true, width = screen_width * 0.45, height = screen_height * 0.8 }
    },

    -- Galculator
    {
        rule_any = { class = { "Galculator" } },
        except_any = { type = { "dialog" } },
        properties = { floating = true, width = screen_width * 0.2, height = screen_height * 0.4 }
    },
    -- Telegram
    {
        rule_any = { class = { "TelegramDesktop", "Kotatogram", "KotatogramDesktop" } },
        except_any = { fullscreen = true},
        properties = { floating = true, width = 452, height = 700}
    },

}
-- }}}
