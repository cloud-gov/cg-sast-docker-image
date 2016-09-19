FROM gliderlabs/alpine:latest

RUN apk --no-cache --update add go git

# install the Go Scanner
ENV GOPATH=/tmp

RUN go get github.com/HewlettPackard/gas && cp /tmp/bin/gas /usr/local/bin && rm -fr /tmp/*

ADD task-gas.sh /usr/local/bin/task-gas.sh
