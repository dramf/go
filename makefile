MAINPACKAGE=app
EXENAME=goapp
BUILDPATH=$(CURDIR)
export GOPATH=$(CURDIR)

default : all

all : makedir get build

makedir :
	@if [ ! -d $(BUILDPATH)/bin ] ; then mkdir -p $(BUILDPATH)/bin ; fi
	@if [ ! -d $(BUILDPATH)/pkg ] ; then mkdir -p $(BUILDPATH)/pkg ; fi

build :
	@echo "building...."
	@go build -o $(BUILDPATH)/bin/$(EXENAME) $(MAINPACKAGE)

get :
	@echo "download packages...."
	@go get github.com/gorilla/mux

clean :
	@echo "cleaning...."
	@rm -rf $(BUILDPATH)/bin/$(EXENAME)
	@rm -rf $(BUILDPATH)/pkg
	@rm -rf $(BUILDPATH)/bin

test :
	go test -race -coverprofile=coverage.txt -covermode=atomic -short ./src/app

cover :
	go test -v -coverprofile=main.out ./src/app
	go tool cover -html=main.out