FROM golang:latest

ENV GOPATH /gopath

WORKDIR /gopath/app

RUN git clone --depth 1 https://github.com/toukii/web-hw && cd web-hw && go build -o web && pwd && ls

EXPOSE 80

CMD ["/gopath/app/web-hw/web"]