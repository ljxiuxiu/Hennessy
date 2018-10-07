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

var types;
var gys;
var xnss;
var cytys;


//总导航
router.use(function(req,res,next){
    pool.getConnection(function(err,conn){
        conn.query("select * from type", function (err,result){
            conn.query("select * from list where tid=2", function (err,result2) {
                conn.query("select * from list where tid=3", function (err,result3) {
                    conn.query("select * from list where tid=4", function (err,result4){
                        conn.release();
                        types=result;
                        gys=result2;
                        xnss=result3;
                        cytys=result4;
                        next();
                    });
                });
            });
        });
    });
});
//人物首页
router.get("/", function (req,res) {
    pool.getConnection(function(err,conn){
        conn.query("select * from TALENTS order by tid",function(err,result){
            conn.query("select * from FILTER order by fid",function(err,result1){
                conn.release();
                if(err) {
                    console.log(err);
                }else{
                    res.render("jhj/index",{
                        userInfo:req.session.userInfo,
                        type:result,
                        fs:result1,
                        types:types,
                        gys:gys,
                        xnss:xnss,
                        cytys:cytys
                        });
                    }
                });
            });
    });
});

//轩尼世家
router.get("/family", function (req,res) {
    pool.getConnection(function(err,conn){
        conn.query("select * from TALENTS order by tid",function(err,result){
            conn.release();
            if(err) {
                console.log(err);
            }else{
                res.render("jhj/family",{
                    userInfo:req.session.userInfo,
                    type:result,
                    types:types,
                    gys:gys,
                    xnss:xnss,
                    cytys:cytys
                });
            }
        });
    });
});
//创意特饮
router.get("/createDrink", function (req,res) {
    pool.getConnection(function(err,conn){
        conn.query("select d.*,sd.* from drinks d,sdrinks sd where d.did=sd.did",function(err,result){
                conn.release();
                if(err) {
                    console.log(err);
                }else{
                    res.render("jhj/createDrink",{
                        userInfo:req.session.userInfo,
                        de:result,
                        types:types,
                        gys:gys,
                        xnss:xnss,
                        cytys:cytys
                    });
                }
            });
        });
});

//筛选1
router.get("/filter",function(req,res){
    pool.getConnection(function(err,conn){
        conn.query("select * from TALENTS order by tid",function(err,result){
            conn.query("select distinct * from FILTER f, TALENTS t where f.fid=t.fid and f.fid=?",[req.query.fid],function(err,results){
                    conn.release();
                    if(err){
                        console.log(err);
                    }else{
                        res.render("jhj/index_filter",{
                            userInfo:req.session.userInfo,
                            type:result,
                            fs:results,
                            types:types,
                            gys:gys,
                            xnss:xnss,
                            cytys:cytys
                        });

                    }
              });
         });
     });
});
//筛选2
router.get("/filter1",function(req,res){
    pool.getConnection(function(err,conn){
        conn.query("select * from DRINKS order by did",function(err,result){
            conn.query("select distinct * from FILTERS f, DRINKS d where f.fsid=d.fsid and f.fsid=?",[req.query.fsid],function(err,results){
                    conn.release();
                    if(err){
                        console.log(err);
                    }else{
                        res.render("jhj/drinks_filter",{
                            userInfo:req.session.userInfo,
                            type:result,
                            fs:results,
                            types:types,
                            gys:gys,
                            xnss:xnss,
                            cytys:cytys
                        });
                    }
                });
            });
        });
});
//人物详情
router.get("/search",function(req,res){
    pool.getConnection(function(err,conn){
        conn.query("select * from TALENTS where tid=?",[req.query.tid],function(err,result){
               conn.release();
               if(err){
                    console.log(err);
                }else{
                    res.render("jhj/index_search",{
                        userInfo:req.session.userInfo,
                        details:result,
                        types:types,
                        gys:gys,
                        xnss:xnss,
                        cytys:cytys
                     });
                }
        });
    });
});
//饮品首页
router.get("/drinks", function (req,res) {
    pool.getConnection(function(err,conn){
        conn.query("select * from drinks order by did",function(err,result){
            conn.query("select * from FILTERS order by fsid",function(err,result1){
                res.render("jhj/drinks",{
                    userInfo:req.session.userInfo,
                    type:result,
                    fs:result1,
                    types:types,
                    gys:gys,
                    xnss:xnss,
                    cytys:cytys
            });
             });
        });
    });
 });

//饮品详情
router.get("/explore", function (req,res) {
    pool.getConnection(function(err,conn){
        conn.query("select d.*,s.* from drinks d, sdrinks s where d.did=s.did",function(err,result){
             conn.query("select * from drinks where did=?",[req.query.did],function(err,result1){
                conn.release();
                if(err){
                    console.log(err);
                }else{
                    res.render("jhj/drinks_explore",{
                        userInfo:req.session.userInfo,
                        details:result1,
                        de:result,
                        types:types,
                        gys:gys,
                        xnss:xnss,
                        cytys:cytys
                    });
                }
            });

         });
    });
});
//调酒师首页
router.get("/mixter", function (req,res) {
    pool.getConnection(function(err,conn){
        conn.query("select * from mixter order by mid",function(err,result){
            res.render("jhj/mixter",{
                userInfo:req.session.userInfo,
                type:result,
                types:types,
                gys:gys,
                xnss:xnss,
                cytys:cytys
            });
        });
    });
});

//调酒师详情
router.get("/look", function (req,res) {
    pool.getConnection(function(err,conn){
        conn.query("select * from MIXTER where mid=?",[req.query.mid],function(err,result){
            conn.release();
            if(err){
                console.log(err);
            }else{
                res.render("jhj/mixter_look",{
                    userInfo:req.session.userInfo,
                    details:result,
                    types:types,
                    gys:gys,
                    xnss:xnss,
                    cytys:cytys
                });
            }
        });
    });
});
//历史
router.get("/history", function (req,res) {
    pool.getConnection(function(err,conn){
        pool.getConnection(function(err,conn){
            conn.query("select * from parts order by pid",function(err,result){
                conn.query("select p.* ,h.*,s.* from parts p,history h,spirit s where p.pid=h.pid and h.sid=s.sid",function(err,resu){
                    conn.release();
                    if(err){
                        console.log(err);
                    }else{
                          res.render("jhj/history",{
                              userInfo:req.session.userInfo,
                              outcome:resu,
                              type:result,
                              types:types,
                              gys:gys,
                              xnss:xnss,
                              cytys:cytys
                         });
                    }
                });
            });
        });
    });
});

//第三步，将这个支线模块，加载到主模块里面去
module .exports=router;
