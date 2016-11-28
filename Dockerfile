FROM golang:latest

ENV GOPATH /gopath

WORKDIR /gopath/bin

RUN go get github.com/toukii/web-hw && ls

EXPOSE 80

CMD ["/gopath/bin/web-hw"]