# `cabal-targets` #

List the targets in a Cabal project, using the [cabal-plan](https://hackage.haskell.org/package/cabal-plan) library

## Synopsis ##

```
Usage: cabal-targets [-p|--project DIR] [-i|--include TYPE] [-x|--exclude TYPE]

Available options:
  -h,--help                Show this help text
  -p,--project DIR         The project directory, or a subdirectory of it (default: .)
  -i,--include TYPE        Include targets of type TYPE (repeatable; one of: lib, flib, exe, test, bench, setup)
  -x,--exclude TYPE        Exclude targets of type TYPE (repeatable; one of: lib, flib, exe, test, bench, setup)
```

## Installation ##

Copy `cabal-targets.hs` to a file named `cabal-targets` in a directory somewhere on your `PATH`, and make sure it's executable.

## Use ##

Type `cabal-targets` in any Cabal project directory.

It is necessary to have run a `cabal` command that has generated a build plan. `cabal build --dry-run` is sufficient for that.
