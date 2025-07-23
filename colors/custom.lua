local calm = {
   bg         = '#1e1e2e', -- softened base
   fg         = '#dcd7ba', -- warm soft text
   accent     = '#a6adc8', -- muted blue-gray for accents
   cursor     = '#cdd6f4',
   cursor_fg  = '#1e1e2e',
   selection  = '#313244',
   selection_fg = '#dcd7ba',
   subtle     = '#6c7086', -- subtext
   tab_active = '#585b70',
   tab_inactive = '#313244',
   bell       = '#f38ba8',
}

local scheme = {
   foreground = calm.fg,
   background = calm.bg,
   cursor_bg = calm.cursor,
   cursor_border = calm.cursor,
   cursor_fg = calm.cursor_fg,
   selection_bg = calm.selection,
   selection_fg = calm.selection_fg,

   ansi = {
      '#1c1c1c', -- black
      '#a35d6a', -- red
      '#78997a', -- green
      '#c0a36e', -- yellow
      '#7e9cd8', -- blue
      '#ad8ee6', -- magenta
      '#7fb4ca', -- cyan
      '#dcd7ba', -- white
   },
   brights = {
      '#3c3c3c', -- bright black
      '#e67e80', -- bright red
      '#98c379', -- bright green
      '#e5c07b', -- bright yellow
      '#82aaff', -- bright blue
      '#c678dd', -- bright magenta
      '#70c0ba', -- bright cyan
      '#e4e4e4', -- bright white
   },

   tab_bar = {
      background = calm.bg,
      active_tab = {
         bg_color = calm.tab_active,
         fg_color = calm.fg,
      },
      inactive_tab = {
         bg_color = calm.tab_inactive,
         fg_color = calm.subtle,
      },
      inactive_tab_hover = {
         bg_color = calm.tab_inactive,
         fg_color = calm.fg,
      },
      new_tab = {
         bg_color = calm.bg,
         fg_color = calm.subtle,
      },
      new_tab_hover = {
         bg_color = calm.bg,
         fg_color = calm.fg,
         italic = true,
      },
   },

   visual_bell = calm.bell,
   indexed = {
      [16] = '#fab387', -- soft orange
      [17] = '#f5e0dc', -- rosewater
   },

   scrollbar_thumb = calm.tab_active,
   split = calm.subtle,
   compose_cursor = calm.accent,
}

return scheme
