package main

import (
	"develop/internal/app"
	"develop/pkg/infra"
)

func main() {
	if err := infra.Init("config"); err != nil {
		panic(err)
	}

	app.Run()
}
