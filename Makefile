

build:
	docker build . -t liamg/thisisfine

publish: build
	docker tag liamg/thisisfine liamg/thisisfine:${TAG}
	docker push liamg/thisisfine:${TAG}
	docker tag liamg/thisisfine liamg/thisisfine:latest
	docker push liamg/thisisfine:latest

run: build
	docker run -it liamg/thisisfine

