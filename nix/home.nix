{ config, pkgs, ... }:

{
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "manojkarthick";
  home.homeDirectory = "/Users/manojkarthick";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "20.09";

  home.packages = [
    pkgs.git
    pkgs.starship
    pkgs.kubernetes-helm
    pkgs.kubectl
    pkgs.tree
    pkgs.wget
    pkgs.python38
    pkgs.awscli
    pkgs.gitAndTools.gh
    pkgs.unixtools.watch
    pkgs.asciinema
    pkgs.netlify-cli
    pkgs.terraform-landscape
    pkgs.heroku
    pkgs.jq
    pkgs.xsv
    pkgs.gnupg
    pkgs.packer
    pkgs.restic
    pkgs.terminal-notifier
    pkgs.vagrant
    pkgs.newsboat

    # Own packages
    pkgs.expenses
    pkgs.reddsaver
  ];
}
