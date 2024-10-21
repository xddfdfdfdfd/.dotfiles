{pkgs, ...}: {
  # Configure Hyprland
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      "$mod" = "SUPER";
      "$modShift" = "$mod SHIFT";

      # Exec once on startup
      exec-once = [
        "hyprctl setcursor Bibata-Modern-Classic 15"
        "waybar"
      ];

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

      # Animations
      animations = {
        enabled = true;
        animation = [
          "global, 1, 3, default"
          "workspaces, 0, 3, default"
        ];
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

        # Move focus with $mod + h / j / k / l keys
        "$mod, h, movefocus, l"
        "$mod, l, movefocus, r"
        "$mod, k, movefocus, u"
        "$mod, j, movefocus, d"

        # Resize active window with $mod + shift + h / j / k / l keys
        "$modShift, h, resizeactive, -30 0"
        "$modShift, l, resizeactive, 30 0"
        "$modShift, k, resizeactive, 0 -30"
        "$modShift, j, resizeactive, 0 30"

        # Scroll through workspaces with $mod + left / right arrow keys
        "$mod, left, workspace, e-1"
        "$mod, right, workspace, e+1"

        # Increase / Decrease volume
        "$mod, up, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
        "$mod, down, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
      ];

      # Workspaces
      workspace = [
        "1, persistent:true"
        "2, persistent:true"
        "3, persistent:true"
        "4, persistent:true"
        "5, persistent:true"
      ];

      # Misc
      misc = {
        force_default_wallpaper = 0;
        disable_hyprland_logo = true;
      };
    };
  };

  # Extra packages
  home.packages = with pkgs; [
    bibata-cursors
  ];
}
