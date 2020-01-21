package main

import (
	"encoding/json"
	"fmt"

	"github.com/astaxie/beego"
	"github.com/sirupsen/logrus"

	_ "github.com/go-sql-driver/mysql"
	_ "github.com/golang-migrate/migrate/source/file"
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
	res1De := &response1{
		Page:   1,
		Fruits: []string{"apple", "peach", "pear"}}
	this.Data["json"] = res1De
	res1B, _ := json.Marshal(res1De)
	fmt.Println(string(res1B))
	this.ServeJSON()
}

func main() {
	// 在 main 裡面使用 logrus

	l := logrus.New()

	l.Info("This is an info")
	l.Warn("This is a warning")
	l.Error("This is an error")
	beego.Router("/", &MainController{})
	beego.Run("localhost:5000")
}
