FROM golang:1.20.3-bullseye as builder
WORKDIR /go/src
COPY hello.go .
RUN ["go", "build", "hello.go"]

FROM scratch
COPY --from=builder /go/src/hello .
CMD [ "./hello" ]