FROM golang:1.13-buster
# create a working directory
WORKDIR /go/src/app

RUN apk add --no-cache git curl \
    && curl https://glide.sh/get | sh

ADD glide.yaml glide.yaml
ADD glide.lock glide.lock

RUN glide install

# add source code
ADD src src
# run main.go
CMD ["go", "run", "src/mafia-server.go"]