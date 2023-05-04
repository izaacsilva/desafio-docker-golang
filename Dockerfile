FROM golang:1.20.3-bullseye

WORKDIR /usr/src/app

COPY . .

CMD ["go", "run", "hello.go"]