help:
	@echo "Make targets:"
	@echo "  help       - Print this help message."
	@echo "  build      - Build the application."
	@echo "  run        - Run the application in the background."
	@echo "  stop       - Stop the application."
	@echo "  clean      - Stop the application, delete the binary and log file."
	@echo "  test       - Test the application."

build:## Build the application
	-go mod init github.com/TessieV/awesome-api
	-go build

run:## Run
	-./awesome-api >./awesome-api.log 2>&1 &

stop:## Stop
	pgrep awesome-api | xargs kill

clean:## Clean
	kill "$(pgrep awesome-api)"

test:## Test
	curl http://localhost:9999
	curl http://localhost:9999/health
