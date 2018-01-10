all: slowpoke
	docker build --pull -t mikespokefire/slowpoke .

slowpoke:
	CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o slowpoke .
