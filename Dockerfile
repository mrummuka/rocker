# This is a Dockerfile for testing rocker installation/build under Linux
FROM golang:alpine
RUN apk add --no-cache git gcc
ENV GO15VENDOREXPERIMENT 1
ENV CGO_ENABLED 0
RUN go get -u github.com/grammarly/rocker
