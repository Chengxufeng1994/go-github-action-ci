FROM golang:1.23.1-bullseye AS build
ARG VERSION=dev

WORKDIR /go/src/app
COPY go.mod .
RUN go mod download
COPY . .
RUN go build -o main -ldflags=-X=main.version=${VERSION} cmd/main.go

FROM alpine:3.20
COPY --from=build /go/src/app/main /go/bin/main
ENV PATH="/go/bin:${PATH}"
CMD ["main"]