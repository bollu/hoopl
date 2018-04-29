# NOTE TO SELF: Live pass is fucked.
SRC_FILES=../src/Compiler/Hoopl/Block.hs \
		  ../src/Compiler/Hoopl/Checkpoint.hs \
		  ../src/Compiler/Hoopl/Collections.hs \
		  ../src/Compiler/Hoopl/Combinators.hs \
		  ../src/Compiler/Hoopl/Label.hs \
		  ../src/Compiler/Hoopl/Graph.hs \
		  ../src/Compiler/Hoopl/Unique.hs \
		  ../src/Compiler/Hoopl/Fuel.hs \
		  ../src/Compiler/Hoopl/Dataflow.hs \
		  ../src/Compiler/Hoopl/MkGraph.hs \
		  ../src/Compiler/Hoopl/Internals.hs \
		  ../src/Compiler/Hoopl/Pointed.hs \
		  ../src/Compiler/Hoopl/Shape.hs \
		  ../src/Compiler/Hoopl/Show.hs \
		  ../src/Compiler/Hoopl/Stream.hs \
		  ../src/Compiler/Hoopl/Wrappers.hs \
		  ../src/Compiler/Hoopl/XUtil.hs \
		  ../src/Compiler/Hoopl/Debug.hs \
		  ../src/Compiler/Hoopl.hs \
		  ../src/Compiler/Hoopl/Passes/Dominator.hs

# ./src/Compiler/Hoopl/Haddock.hs


OUTDIR=`pwd`

all: gencoq gencoq Makefile.coq

# generate coq from haskell files
gencoq:
	hs-to-coq  -e ../edits  \
		-e /home/bollu/work/hs-to-coq/base/edits \
		--iface-dir  /home/bollu/work/hs-to-coq/base/ \
		--iface-dir $(OUTDIR)/ \
		$(SRC_FILES) -o $(OUTDIR)



# create the Makefile.coq required to build the coq proof of Hoopl
Makefile.coq:
	coq_makefile -f _CoqProject -o Makefile.coq

# build the coq proof
buildcoq: Makefile.coq
	make -f Makefile.coq
