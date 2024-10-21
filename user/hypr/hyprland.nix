{
  # Configure Hyprland
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      "$mod" = "SUPER";
      "$modShift" = "$mod SHIFT";

      # Monitors
      monitor = [
        "eDP-1,disable"
        "HDMI-A-1,1920x1080@75,0x0,1"
      ];

      # General
      general = {
        gaps_in = 3;
        gaps_out = 8;
        border_size = 2;
        no_border_on_floating = true;
        "col.inactive_border" = "rgb(2E3440)";
        "col.active_border" = "rgb(5e81ac)";
      };

      # Decorations
      decoration = {
        rounding = 3;
        drop_shadow = false;
        blur = {
          enabled = true;
          xray = true;
          passes = 2;
        };
      };

      # Dwindle
      dwindle = {
        force_split = 2;
        preserve_split = true;
      };

      # Keybindings
      bind = [
        # Launch apps
        "$mod, Return, exec, foot"
        "$mod, B, exec, firefox"

        # Manage active window
        "$mod, Q, killactive,"

        # Switch to a workspace with $mod + numkey
        "$mod, 1, workspace, 1"
        "$mod, 2, workspace, 2"
        "$mod, 3, workspace, 3"
        "$mod, 4, workspace, 4"
        "$mod, 5, workspace, 5"

        # Move active window to a workspace with $mod + shift + numkey
        "$modShift, 1, movetoworkspacesilent, 1"
        "$modShift, 2, movetoworkspacesilent, 2"
        "$modShift, 3, movetoworkspacesilent, 3"
        "$modShift, 4, movetoworkspacesilent, 4"
        "$modShift, 5, movetoworkspacesilent, 5"
      ];

      # Misc
      misc = {
        force_default_wallpaper = 0;
        disable_hyprland_logo = true;
      };
    };
  };
}
