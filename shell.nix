let
  sources = import ./nix/sources.nix;
  pkgs = import sources.nixpkgs {};
in pkgs.mkShell {
  nativeBuildInputs = [
    pkgs.stack
    pkgs.cabal-install
    pkgs.niv
    pkgs.ghc
    pkgs.zlib
    pkgs.ihaskell
    pkgs.pkg-config
    pkgs.zeromq
  ];
}
