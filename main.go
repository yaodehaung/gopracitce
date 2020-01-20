package main

import (
	"encoding/json"
	"fmt"

	"github.com/astaxie/beego"
	"github.com/sirupsen/logrus"
)

type response1 struct {
	Page   int
	Fruits []string
}
type response2 struct {
	Page   int      `json:"page"`
	Fruits []string `json:"fruits"`
}

type MainController struct {
	beego.Controller
}

func (this *MainController) Get() {
	// this.Data["json"] = map[string]interface{}{"success": 0, "message": "111"}
	res1De := &response1{
		Page:   1,
		Fruits: []string{"apple", "peach", "pear"}}
	this.Data["json"] = res1De
	this.ServeJSON()
}

func main() {
	// 在 main 裡面使用 logrus
	l := logrus.New()
	bolB, _ := json.Marshal(true)
	fmt.Println(string(bolB))

	res1D := &response1{
		Page:   1,
		Fruits: []string{"apple", "peach", "pear"}}

	res1B, _ := json.Marshal(res1D)
	fmt.Println(string(res1B))
	l.Info("This is an info")
	l.Warn("This is a warning")
	l.Error("This is an error")
	beego.Router("/", &MainController{})
	beego.Run("localhost:5000")
}
