{
  # Configure Waybar
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";

        spacing = 8;
        margin-top = 6;
        margin-left = 8;
        margin-right = 8;

        modules-left = ["hyprland/workspaces"];
        modules-center = [];
        modules-right = ["tray" "pulseaudio" "memory" "network"];

        tray = {
          spacing = 5;
          icon-size = 18;
        };

        pulseaudio = {
          tooltip = false;
          format = "{icon}  {volume}%";
          format-icons = ["" "" ""];
          format-muted = "  Muted";
          format-bluetooth = "  {volume}%";
        };

        memory = {
          tooltip = false;
          format = "  {used} GiB";
        };

        network = {
          tooltip = false;
          format-wifi = "  {essid}";
          format-ethernet = "  {ipaddr}";
          format-disconnected = "  Disconnected";
        };
      };
    };
    style = ''
      * {
        border: none;
        font-family: SauceCodePro Nerd Font;
      }

      window#waybar {
        background: transparent;
      }

      #workspaces button {
        margin: 0em 0.3em;
        padding: 0.5em 0.7em;
        background: #292e39;
        font-weight: bold;
      }

      #workspaces button.empty {
        color: #434c5e;
      }

      #workspaces button.active {
        color: #292e39;
        background: #8fbcbb;
      }

      #pulseaudio, #network, #memory {
        color: #292e39;
        background: #8fbcbb;
        padding: 0em 0.9em;
        font-weight: bold;
        border-radius: 5px;
      }
    '';
  };
}
