# nix/modules/nixos.nix — auto-generated from cxx.caixa.lisp
# description: "Safe interop between Rust and C++"
{ config, lib, pkgs, ... }:
let
  cfg = config.services.cxx;
in {
  options.services.cxx = {
    enable = lib.mkEnableOption "cxx";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.cxx or null;
    };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
