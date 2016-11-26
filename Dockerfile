FROM golang:latest

ENV GOPATH /gopath

WORKDIR /gopath/app

RUN git clone --depth 1 https://github.com/toukii/web-hw && cd web-hw && go build -o web && mv web ../web


RUN git clone --depth=1 https://github.com/Cutehacks/qpm.git && cd qpm && git submodule init && git submodule update

EXPOSE 80

CMD ["/gopath/app/web"]