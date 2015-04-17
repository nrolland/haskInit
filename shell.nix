{ pkgs ? (import <nixpkgs> {}) }:

let shellEnv = (import ./default.nix) {
    stdenv            = pkgs.stdenv;
    haskellngPackages = pkgs.haskellngPackages;
  };
in
  shellEnv