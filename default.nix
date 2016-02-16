with import <nixpkgs> {}; {
  pyEnv = stdenv.mkDerivation {
    name = "py";
    buildInputs = [
      stdenv
      python27
      blas
      gcc
    ] ++ (with python27Packages; [
      numpy
      scipy
      (pkgs.callPackage ./nix-deps/theano.nix {})
      (pkgs.callPackage ./nix-deps/lasagne.nix {})
    ]);
  };
}
