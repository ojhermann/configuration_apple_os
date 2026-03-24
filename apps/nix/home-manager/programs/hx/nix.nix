{ pkgs, ... }:

{
  home.packages = [
    pkgs.nil
    pkgs.nixd
    pkgs.nixfmt-rfc-style
  ];

  programs.helix.languages.language = [
    {
      name = "nix";
      auto-format = true;
      formatter = {
        command = "nixfmt";
      };
    }
  ];
}
