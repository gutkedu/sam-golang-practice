.PHONY: build

build-HelloWorldFunction:
	GOOS=linux GOARCH=arm64 CGO_ENABLED=0 go build -ldflags="-s -w" -tags lambda.norpc -o bootstrap ./hello-world
	cp ./bootstrap $(ARTIFACTS_DIR)/
