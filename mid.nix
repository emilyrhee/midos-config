{ pkgs, ... }:

{
  mid.enable = true;
  mid.laptop = true;

  mid.packages = [
    pkgs.gcc
    pkgs.aseprite
    pkgs.arduino
    pkgs.vscode
    pkgs.inkscape
    pkgs.krita
    pkgs.spotify
    pkgs.qtspim
    pkgs.mars-mips
    pkgs.unzip
    pkgs.verilog
  ];

  mid.android.enable = true;
  mid.audio.enable = true;

  mid.browsers.enable = true;
  mid.browsers.brave.enable = true;
  mid.browsers.firefox.enable = true;
  mid.browsers.firefox.default = true;

  mid.desktops.enable = true;
  mid.desktops.gdm = true;
  mid.desktops.gnome.enable = true;

  mid.editors.enable = true;
  mid.editors.lunarvim.enable = true;
  mid.editors.lunarvim.default = true;
  mid.editors.vim.enable = true;

  mid.fonts.enable = true;
  mid.git.enable = true;
  mid.graphics = true;

  mid.inputs.enable = true;
  mid.inputs.macSuper = true;

  mid.locale.enable = true;
  mid.locale.locale = "en_US.UTF-8";

  mid.media.enable = true;
  mid.media.image.enable = true;
  mid.media.pdf.enable = true;

  mid.network.enable = true;
  mid.network.hostname = "nixos";

  mid.nix.enable = true;
  mid.obsidian.enable = true;
  mid.printing.enable = true;

  mid.security.enable = true;
  mid.security.fingerPrint = true;

  mid.shells.enable = true;
  mid.shells.xonsh.enable = true;

  mid.socials.enable = true;
  mid.socials.vesktop = true;

  mid.ssh.enable = true;
  mid.terminal.enable = true;
  mid.theme.enable = true;

  mid.time.enable = true;
  mid.time.timezone = "America/New_York";

  mid.user.enable = true;
  mid.user.user = "emilyrhee";

  mid.virt.enable = true;
  mid.xdg.enable = true;
}
