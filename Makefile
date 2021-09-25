.PHONY: all build

build:
	export CGO_ENABLED=0
	GOOS=linux GOARCH=amd64 go build -o bin/keepassxc-cr-recovery-linux-amd64
	GOOS=linux GOARCH=arm64 go build -o bin/keepassxc-cr-recovery-linux-arm64
	GOOS=darwin GOARCH=amd64 go build -o bin/keepassxc-cr-recovery-darwin-amd64
	GOOS=darwin GOARCH=arm64 go build -o bin/keepassxc-cr-recovery-darwin-arm64
	GOOS=windows GOARCH=amd64 go build -o bin/keepassxc-cr-recovery-windows-amd64.exe

all: build
