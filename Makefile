
# └── Compiler
#     ├── Hoopl
#     │   ├── Block.hs x
#     │   ├── Checkpoint.hs x
#     │   ├── Collections.hs x
#     │   ├── Combinators.hs x
#     │   ├── Dataflow.hs x
#     │   ├── Debug.hs
#     │   ├── Fuel.hs x
#     │   ├── GHC.hs
#     │   ├── Graph.hs x
#     │   ├── Haddock.hs x
#     │   ├── HISTORY
#     │   ├── Internals.hs x
#     │   ├── Label.hs x
#     │   ├── mkfile
#     │   ├── MkGraph.hs x
#     │   ├── NOTES
#     │   ├── Passes
#     │   │   ├── DList.hs
#     │   │   ├── Dominator.hs
#     │   │   ├── Live.hs
#     │   │   └── mkfile
#     │   ├── Pointed.hs x
#     │   ├── Shape.hs x
#     │   ├── Show.hs x
#     │   ├── Stream.hs x
#     │   ├── Unique.hs x
#     │   ├── Wrappers.hs
#     │   └── XUtil.hs x
#     ├── Hoopl.hs x
#     └── mkfile
# 



# NOTE TO SELF: Live pass is fucked.
SRC_FILES=./src/Compiler/Hoopl/Block.hs \
		  ./src/Compiler/Hoopl/Checkpoint.hs \
		  ./src/Compiler/Hoopl/Collections.hs \
		  ./src/Compiler/Hoopl/Combinators.hs \
		  ./src/Compiler/Hoopl/Label.hs \
		  ./src/Compiler/Hoopl/Graph.hs \
		  ./src/Compiler/Hoopl/Unique.hs \
		  ./src/Compiler/Hoopl/Fuel.hs \
		  ./src/Compiler/Hoopl/Dataflow.hs \
		  ./src/Compiler/Hoopl/MkGraph.hs \
		  ./src/Compiler/Hoopl/Internals.hs \
		  ./src/Compiler/Hoopl/Pointed.hs \
		  ./src/Compiler/Hoopl/Shape.hs \
		  ./src/Compiler/Hoopl/Show.hs \
		  ./src/Compiler/Hoopl/Stream.hs \
		  ./src/Compiler/Hoopl/Wrappers.hs \
		  ./src/Compiler/Hoopl/XUtil.hs \
		  ./src/Compiler/Hoopl/Debug.hs \
		  ./src/Compiler/Hoopl.hs \
		  ./src/Compiler/Hoopl/Passes/Dominator.hs \
		  ./src/Compiler/Hoopl/Haddock.hs

OUTDIR=coq-out

all:
	mkdir -p out
	hs-to-coq  -e edits  \
		-e /home/bollu/work/hs-to-coq/base/edits \
		--iface-dir  /home/bollu/work/hs-to-coq/base/ \
		--iface-dir $(OUTDIR)/ \
		$(SRC_FILES) -o $(OUTDIR)
