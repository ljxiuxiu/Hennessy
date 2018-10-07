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

var alltype;
var allgy;
var allxns;
var allcyty;
router.use(function (req,res,next) {
    pool.getConnection(function (err, conn) {
        conn.query("select * from type", function (err,result) {
            conn.query("select * from list where tid=2", function (err,result2) {
                conn.query("select * from list where tid=3", function (err,result3) {
                    conn.query("select * from list where tid=4", function (err,result4) {
                        conn.release();
                        alltype=result;
                        allgy=result2;
                        allxns=result3;
                        allcyty=result4;
                        next();
                    });
                });
            });
        });
    })
})

router.get("/", function (req,res) {
    res.render("ljx/index");
});

//主页
router.get("/index", function (req,res) {
    pool.getConnection(function (err,conn) {
        conn.query("select * from news", function (err,result5) {
            conn.release();
            if(err){
                console.log(err);
            }
            res.render("ljx/Hennessy",{
                userInfo:req.session.userInfo,
                types:alltype,
                gys:allgy,
                xnss:allxns,
                cytys:allcyty,
                news:result5
            });
        });

    });
})

router.get("/ydgd", function (req,res) {
    res.render("ljx/eyes",{
        userInfo:req.session.userInfo,
        types:alltype,
        gys:allgy,
        xnss:allxns,
        cytys:allcyty
    });
})

//登录
router.get("/login_reg", function (req,res) {
    res.render("ljx/login");
})

var resData;
router.use(function(req,res,next){
    resData={
        code:-1,
        message:""
    };
    next();
});

//注册
router.post("/reg", function (req,res) {
    var uname=req.body.uname;
    var pwd=req.body.pwd;
    pool.getConnection(function (err,conn) {
        if(err){
            resData.code=0;
            resData.message="网络连接失败，请稍后重试";
            res.json(resData);
        }else{
            conn.query("select * from user where uname=?",[uname], function (err,resu) {
                if(err){
                    resData.code=0;
                    resData.message="网络连接失败，请稍后重试";
                    res.json(resData);
                }else if(resu.length>0){
                    resData.code=1;
                    resData.message="该用户已经存在";
                    res.json(resData);
                }else{
                    conn.query("insert into user values(0,?,?)",[uname,pwd], function (err,result) {
                        conn.release();
                        if(err){
                            resData.code=0;
                            resData.message="网络连接失败，请稍后重试";
                            res.json(resData);
                        }else if(result.affectedRows>0){
                            resData.code=2;
                            resData.message="注册成功";
                            res.json(resData);
                        }

                    })
                }
            })
        }
    })
})

//登录
router.post("/login", function (req,res) {
    var uname=req.body.uname;
    var pwd=req.body.pwd;

    pool.getConnection(function (err,conn) {
        if(err){
            resData.code=0;
            resData.message="网络连接错误，请稍后重试";
            res.json(resData);
        }else{
            conn.query("select * from user where uname=? and pwd=?",[uname,pwd], function (err,result) {
                conn.release();
                if(err){
                    resData.code=0;
                    resData.message="网络连接错误，请稍后重试";
                    res.json(resData);
                }else if(result.length<=0){
                    resData.code=1;
                    resData.message="用户名或密码错误";
                    res.json(resData);
                }else{
                    resData.code=2;
                    resData.message="登录成功";
                    req.session.userInfo=result[0];
                    res.json(resData);
                }
            })

        }
    })
})

//简介
router.get("/Hennessy", function (req,res) {
    pool.getConnection(function (err,conn) {
        conn.query("select id,th3,tname,title,content  from intro", function (err,result) {
            conn.release();
            if(err){
                console.log(err);
            }
            res.render("ljx/Hennessy_intro",{
                intros:result
            });
        })

    })

})

//简介的简介
router.get("/intro", function (req,res) {


    pool.getConnection(function (err,conn) {
        conn.query("select *  from intro", function (err,result) {
            conn.release();
            if(err){
                console.log(err);
            }
            res.render("ljx/Hns_intro_how",{
                intros:result,

            });
        })

    })
})
//退出
router.post("/exit", function (req,res) {
    req.session.userInfo="";
    res.send("0");
})

//搜索
router.get("/search_info", function (req,res) {
    //var ctext=req.body.s_text;
    pool.getConnection(function (err,conn) {
        conn.query("select * from drinks where dtitle like '%"+text+"%'",function(err,resu){
            conn.query("select * from mixter where mcountry like '%"+text+"%'", function (err,resu2) {
                conn.query("select * from intro where title like '%"+text+"%'", function (err,resu3) {
                    conn.query("select * from history where hdescription like '%"+text+"%'", function (err,resu4) {
                        conn.query("select * from news where title like '%"+text+"%'", function (err,resu5) {
                            conn.query("select * from talents where title like '%"+text+"%'", function (err,resu6) {
                                conn.query("select l.*,tname from list l,type t where t.tid=l.tid and lname like '%"+text+"%'", function (err,result) {
                                    var allLength=result.length+resu.length+resu2.length+resu3.length+resu4.length+resu5.length+resu6.length;
                                    conn.release();
                                    if(err ){
                                        console.log(err);
                                    }
                                    res.render("ljx/search_info",{
                                        userInfo:req.session.userInfo,
                                        types:alltype,
                                        gys:allgy,
                                        xnss:allxns,
                                        cytys:allcyty,
                                        text:text,
                                        search_info:result,
                                        search_info2:resu,
                                        search_info3:resu2,
                                        search_info4:resu3,
                                        search_info5:resu4,
                                        search_info6:resu5,
                                        search_info7:resu6,
                                        length:allLength
                                    });
                                })

                            })

                        })
                    })

                })
            })

        })
    })

})
var text;
router.post("/search_info", function (req,res) {
    text=req.body.s_text;
})
//第三步，将这个支线模块，加载到主模块里面去
module .exports=router;