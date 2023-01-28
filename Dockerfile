FROM golang:latest

RUN go install github.com/ybkuroki/go-webapp-sample@latest

ENV GO111MODULE=on
ENV GOFLAGS=-mod=vendor
ENV APP_HOME /go/bin

RUN mkdir -p "$APP_HOME"
CMD "$APP_HOME/go-webapp-sample"

EXPOSE 8080:8080
