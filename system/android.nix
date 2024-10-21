{user, ...}: {
  # Configure ADB
  programs.adb = {
    enable = true;
  };

  # Add user to group
  users.users.${user}.extraGroups = ["adbusers"];
}
