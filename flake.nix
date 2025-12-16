{
  description = "List the targets in a Cabal project";

  inputs = { flake-utils.url = "github:numtide/flake-utils"; };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      with import nixpkgs { inherit system; };
      with self.packages.${system};
      {
        packages.default = haskellPackages.callPackage ./. { };
        devShells.default = default.env;
      }
    );
}
