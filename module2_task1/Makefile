help:## Help
	-fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

build:## Build the application
	-make lint || exit -1
	-go mod init github.com/TessieV/awesome-api
	-go build

run:## Run
	-./awesome-api >./awesome-api.log 2>&1 &

stop:## Stop
	-kill "$(shell pgrep awesome-api)"

clean:## Clean
	-make stop
	-rm -rf awesome-api

lint: ## Test lint on the files
	golangci-lint run

test:## Test
	curl http://localhost:9999
	curl http://localhost:9999/health
