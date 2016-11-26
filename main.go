package main

import (
	"net/http"
)

func main() {
	http.HandleFunc("/", root)
	http.ListenAndServe(":80", nil)
}

func root(rw http.ResponseWriter, req *http.Request) {
	rw.Write([]byte("HelloWorld"))
}
