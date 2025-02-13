{
  config,
  pkgs,
  ...
}: let
  # Firefox Nordic Theme
  nordic = pkgs.fetchFromGitHub {
    owner = "EliverLara";
    repo = "firefox-nordic-theme";
    rev = "287c6b4a94361a038d63f2fa7b62f9adfc08fe02";
    hash = "sha256-6ccxZKVsbR2VQr5M3GpbZt3Nfe5RaroWQdYx/aiWB64=";
  };
in {
  home.file.".mozilla/firefox/${config.programs.firefox.profiles.default.path}/chrome".source = nordic;

  # Configure Firefox
  programs.firefox = {
    enable = true;
    policies = {
      DisablePocket = true;
    };
    profiles.default = {
      isDefault = true;
      settings = {
        # Disable irritating first run stuff
        # Source: https://github.com/Misterio77/nix-config/blob/main/home/gabriel/features/desktop/common/firefox.nix#L32-L45
        "browser.disableResetPrompt" = true;
        "browser.download.panel.shown" = true;
        "browser.feeds.showFirstRunUI" = false;
        "browser.messaging-system.whatsNewPanel.enabled" = false;
        "browser.rights.3.shown" = true;
        "browser.shell.checkDefaultBrowser" = false;
        "browser.shell.defaultBrowserCheckCount" = 1;
        "browser.startup.homepage_override.mstone" = "ignore";
        "browser.uitour.enabled" = false;
        "startup.homepage_override_url" = "";
        "trailhead.firstrun.didSeeAboutWelcome" = true;
        "browser.bookmarks.restore_default_bookmarks" = false;
        "browser.bookmarks.addedImportButton" = true;
        "datareporting.policy.firstRunURL" = "";

        # Fully disable Pocket
        # Source: https://git.sr.ht/~rycee/configurations/tree/master/item/user/firefox.nix#L63-77
        "extensions.pocket.enabled" = false;
        "extensions.pocket.api" = "0.0.0.0";
        "extensions.pocket.loggedOutVariant" = "";
        "extensions.pocket.oAuthConsumerKey" = "";
        "extensions.pocket.onSaveRecs" = false;
        "extensions.pocket.onSaveRecs.locales" = "";
        "extensions.pocket.showHome" = false;
        "extensions.pocket.site" = "0.0.0.0";
        "browser.newtabpage.activity-stream.pocketCta" = "";
        "browser.newtabpage.activity-stream.section.highlights.includePocket" =
          false;
        "services.sync.prefs.sync.browser.newtabpage.activity-stream.section.highlights.includePocket" =
          false;

        # Auto install extensions
        "extensions.autoDisableScopes" = 0;
      };
      extensions = with (import ./addons.nix {inherit (pkgs) lib fetchurl stdenv;}); [
        touch-vpn
        sponsorblock
        ublock-origin
      ];
      extraConfig = builtins.readFile "${nordic}/configuration/user.js";
    };
  };
}
