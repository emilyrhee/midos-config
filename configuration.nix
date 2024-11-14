{ inputs, pkgs, ... }:

{ 
  imports = [
    ./hardware-configuration.nix
    inputs.nixos-hardware.nixosModules.framework-13-7040-amd
  ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  programs.steam.enable = true;

  services.httpd.enable = true;
  services.httpd.adminAddr = "emilyrhee99@gmail.com";
  services.httpd.enablePHP = true;
  services.httpd.virtualHosts.localhost.documentRoot = "/www";

  services.mysql.enable = true;
  services.mysql.package = pkgs.mariadb;

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the GNOME Desktop Environment.
  #services.xserver.displayManager.gdm.enable = true;
  #services.xserver.desktopManager.gnome.enable = true;

  # Configure keymap in X11
  services.xserver = {
    xkb = {
      layout = "us";
      variant = "";
    };
  };

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  nixpkgs.config.permittedInsecurePackages = [
    "electron-25.9.0"
  ];

  nixpkgs.config.allowUnfree = true;

  security.wrappers.write = {
    group = "tty";
    owner = "root";
    setgid = true;
    source = "${pkgs.util-linux}/bin/write";
  };

  users.users.emilyrhee = {
    extraGroups = [ "dialout" ];
  };

  # Some programs need SUID wrappers, can be configured further or are started in user sessions. programs.mtr.enable = true; 
  # programs.gnupg.agent = {
  #   enable = true; enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon. services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default settings for stateful data, like file locations and database versions on 
  # your system were taken. It‘s perfectly fine and recommended to leave this value at the release version of the first install of this 
  # system. Before changing this value read the documentation for this option (e.g. man configuration.nix or on 
  # https://nixos.org/nixos/options.html).
  system.stateVersion = "23.11"; # Did you read the comment?
}
