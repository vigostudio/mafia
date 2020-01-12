FROM golang:1.13-alpine

# create a working directory
WORKDIR /go/src/mafia

ADD src src
COPY go.mod .
COPY go.sum .

# run main.go
ENTRYPOINT ["go", "run", "src/mafia-server.go"]