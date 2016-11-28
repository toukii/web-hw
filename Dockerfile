FROM golang:latest

ENV GOPATH /gopath

WORKDIR /gopath/src/qpm.io

RUN git clone --depth=1 https://github.com/Cutehacks/qpm.git . && cd qpm && git submodule init && git submodule update && go install
RUN go get github.com/toukii/web-hw

EXPOSE 80

CMD ["/gopath/bin/web-hw"]