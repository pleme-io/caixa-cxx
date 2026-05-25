# nix/modules/home-manager.nix — auto-generated from cxx.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.cxx; in {
  options.programs.cxx = {
    enable = lib.mkEnableOption "cxx";
    package = lib.mkOption { type = lib.types.package; default = pkgs.cxx or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
