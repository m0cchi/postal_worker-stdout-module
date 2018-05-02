GOCMD=go
GOBUILD=$(GOCMD) build
GOCLEAN=$(GOCMD) clean
GOGET=$(GOCMD) get
BINARY_NAME=postal_worker_stdout.so

all: build

build: clean deps
	$(GOBUILD) -buildmode=plugin -o $(BINARY_NAME) module/stdout.go

clean:
	$(GOCLEAN)
	rm -f $(BINARY_NAME)
deps:
	dep ensure
