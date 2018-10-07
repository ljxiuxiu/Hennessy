var express=require("express");
var mysql=require("mysql");

//配置数据库连接池
var pool=mysql.createPool({
    host:"127.0.0.1",
    port:3306,
    database:"Hennessy",
    user:"root",
    password:"a"
});

//路由操作，第一步，需要加载路由
var router=express.Router();

router.get("/", function (req,res) {
    res.render("xzl/index");
})

//第三步，将这个支线模块，加载到主模块里面去
module .exports=router;