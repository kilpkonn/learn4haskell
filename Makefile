.PHONY: clean
clean:
	cabal clean

.PHONY: build
build:
	cabal build --ghc-options=-dynamic --allow-newer --enable-tests --write-ghc-environment-files=always

.PHONY: test-chapter1
test-chapter1:
	cabal test doctest-chapter1 --allow-newer --enable-tests --test-show-details=direct
	cabal run learn4haskell-test --allow-newer --enable-tests -- -m "Chapter1"

.PHONY: test-chapter1-basic
test-chapter1-basic:
	cabal test doctest-chapter1 --allow-newer --enable-tests --test-show-details=direct
	cabal run learn4haskell-test --allow-newer --enable-tests -- -m "Chapter1Normal"

.PHONY: test-chapter2
test-chapter2:
	cabal test doctest-chapter2 --allow-newer --enable-tests --test-show-details=direct
	cabal run learn4haskell-test --allow-newer --enable-tests -- -m "Chapter2"

.PHONY: test-chapter2-basic
test-chapter2-basic:
	cabal test doctest-chapter2 --allow-newer --enable-tests --test-show-details=direct
	cabal run learn4haskell-test --allow-newer --enable-tests -- -m "Chapter2Normal"

.PHONY: test-chapter3
test-chapter3:
	cabal test doctest-chapter3 --allow-newer --enable-tests --test-show-details=direct
	cabal run learn4haskell-test --allow-newer --enable-tests -- -m "Chapter3"

.PHONY: test-chapter3-basic
test-chapter3-basic:
	cabal test doctest-chapter3 --allow-newer --enable-tests --test-show-details=direct
	cabal run learn4haskell-test --allow-newer --enable-tests -- -m "Chapter3Normal"

.PHONY: test-chapter4
test-chapter4:
	cabal test doctest-chapter4 --allow-newer --enable-tests --test-show-details=direct
	cabal run learn4haskell-test --allow-newer --enable-tests -- -m "Chapter4"

.PHONY: test-chapter4-basic
test-chapter4-basic:
	cabal test doctest-chapter4 --allow-newer --enable-tests --test-show-details=direct
	cabal run learn4haskell-test --allow-newer --enable-tests -- -m "Chapter4Normal"

.PHONY: test-all
test-all:
	cabal test all --allow-newer --enable-tests --test-show-details=direct
