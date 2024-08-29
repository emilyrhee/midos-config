{ inputs, pkgs, ... }:

{
  imports = [ inputs.mid.nixosModules.default ];

  mid = {
    enable = true;
    laptop = true;

    android.enable = true;
    audio.enable = true;
    browsers = {
      enable = true;
      brave.enable = true;
      firefox = {
        enable = true;
        default = true;
      };
    };
    desktops = {
      enable = true;
      gnome.enable = true;
    };
    editors = {
      enable = true;
      lunarvim = {
        enable = true;
        default = true;
      };
    };
    fonts.enable = true;
    git.enable = true;
    inputs = {
      enable = true;
      macSuper = true;
    };
    locale.enable = true;
    media = {
      enable = true;
      image.enable = true;
      pdf.enable = true;
    };
    network = {
      enable = true;
      hostname = "nixos";
    };
    nix.enable = true;
    obsidian.enable = true;
    printing.enable = true;
    security = {
      enable = true;
      fingerPrint = true;
    };
    shells = {
      enable = true;
      xonsh.enable = true;
    };
    socials.enable = true;
    ssh.enable = true;
    terminal.enable = true;
    theme.enable = true;
    user = {
      enable = true;
      user = "emilyrhee";
    };
    virt.enable = true;
    xdg.enable = true;

    packages = builtins.attrValues {
      inherit (pkgs)
        # firefox
        aseprite
        arduino
        signal-desktop
        # obsidian
        vscode
        inkscape
        spotify
        qtspim
        verilog
        vesktop;	
    };
  };
}
