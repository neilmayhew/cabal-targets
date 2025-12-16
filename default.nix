{ mkDerivation, base, cabal-plan, containers, directory, lib
, optparse-applicative, terminal-size, text
}:
mkDerivation {
  pname = "cabal-targets";
  version = "1.0.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    base cabal-plan containers directory optparse-applicative
    terminal-size text
  ];
  homepage = "https://github.com/neilmayhew/cabal-targets";
  description = "List the targets in a Cabal project";
  license = lib.licenses.mit;
  mainProgram = "cabal-targets";
}
