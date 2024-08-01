{
  inputs,
  outputs,
  lib,
  config,
  pkgs,
  ...
}: {
  # You can import other home-manager modules here
  imports = [
    # If you want to use modules your own flake exports (from modules/home-manager):
    # outputs.homeManagerModules.example

    # Or modules exported from other flakes (such as nix-colors):
    # inputs.nix-colors.homeManagerModules.default

    # You can also split up your configuration and import pieces of it here:
    # ./nvim.nix
  ];

  nixpkgs = {
    # You can add overlays here
    overlays = [
      # Add overlays your own flake exports (from overlays and pkgs dir):
      outputs.overlays.additions
      outputs.overlays.modifications
      outputs.overlays.unstable-packages

      # You can also add overlays exported from other flakes:
      # neovim-nightly-overlay.overlays.default

      # Or define it inline, for example:
      # (final: prev: {
      #   hi = final.hello.overrideAttrs (oldAttrs: {
      #     patches = [ ./change-hello-to-hi.patch ];
      #   });
      # })
    ];
    # Configure your nixpkgs instance
    config = {
      # Disable if you don't want unfree packages
      allowUnfree = true;
    };
  };

  # ---- MAIN CONFIG ----
  home = {
    username = "corey";
    homeDirectory = "/home/corey";
  };

  home.packages = with pkgs; [
    cmake
    firefox
    fzf
    gcc
    jq
    kitty
    neovim
    nerdfonts
    nodejs
    python3
    socat
	  unzip
    waybar
    wget
    wl-clipboard
    wofi
    xfce.thunar
    xfce.thunar-volman
  ];

  programs.home-manager.enable = true;
  programs.git.enable = true;
  programs.git =  {
    userEmail="coreytrach@gmail.com";
    userName="Corey Trach";
  };

  systemd.user.startServices = "sd-switch";

  home.stateVersion = "23.05";
}
