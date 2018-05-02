package main

import (
	"github.com/m0cchi/postal_worker/model"
	"log"
)

// ref module
var Module StdOutModule

func init() {
	Module = StdOutModule{}
}

// Print PostalMatter
type StdOutModule struct {
}

func (s StdOutModule) GetModuleName() string {
	return "stdout"
}

func (s StdOutModule) Exec(message model.PostalMatter, to model.To) error {
	log.Println(message)
	return nil
}
