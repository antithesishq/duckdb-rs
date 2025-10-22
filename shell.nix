let
  pkgs = import <nixpkgs> {};
in
(pkgs.mkShell.override { stdenv = pkgs.clangStdenv; }) {
  nativeBuildInputs = [
    pkgs.rustc
    pkgs.cargo
    pkgs.rust-analyzer
  ];
}
