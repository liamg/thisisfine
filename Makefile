

build:
	docker build . -t thisisfine

run: build
	docker run -it thisisfine

