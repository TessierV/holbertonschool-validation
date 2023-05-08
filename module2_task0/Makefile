help:
	fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

build:## Build the application
	-go mod init github.com/TessieV/awesome-api
	-go build

run:## Run
	-./awesome-api >./awesome-api.log 2>&1 &

stop:## Stop
	pgrep awesome-api | xargs kill

clean:## Clean
	kill "$(shell pgrep awesome-api)"

test:## Test
	curl http://localhost:9999
	curl http://localhost:9999/health
