package main

import (
	_ "embed"
	"log"
	"net/http"
)

//go:embed index.html
var index []byte

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		w.Write(index)
	})
	log.Fatal(http.ListenAndServe("localhost:5000", nil))
}
