PREFIX=GOPATH=$(PWD)
COMPILER=go
INDEXTRACKER_OUTNAME=indextracker
TRACKERMANAGER_OUTNAME=./cmd/trackermanager

all: submodules indextracker trackermanager
	$(info Its succefuly compiled. Check the README.md)	
indextracker:
	$(PREFIX) $(COMPILER) build -o $(INDEXTRACKER_OUTNAME)
trackermanager:
	$(PREFIX) $(COMPILER) build $(TRACKERMANAGER_OUTNAME)
submodules:
	git submodule init
	git submodule update
