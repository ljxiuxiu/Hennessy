$(".c-menu-dropdown__box").first().addClass("c-menu-dropdown__box-current");

setTimeout(function () {
    $("#alert").fadeIn();
},200);
setTimeout(function () {
    $("#alert").fadeOut();
},1500);

var height=$(document).height();
$(window).resize(function() {
    height=$(document).height();
});
$("#content").height(height);
$("#l_content .lc_article").hover(function () {
    $("#right").animate({
        opacity:"0.5"
    },500)
    $(this).animate({
        opacity:"1",
        left:"-10px"
    },1000)
    $("#l_content .lc_article .cta").animate({
        opacity:"1"
    })
}, function () {
    $("#right").animate({
        opacity:"0"
    },500)
    $(this).animate({
        opacity:"0.5",
        left:"-50px",
    },1000)
    $("#l_content .lc_article .cta").animate({
        opacity:"0"
    })
})
$("#r_content .lc_article").hover(function () {
    $("#left").animate({
        opacity:"0.8"
    },1000)
    $("#r_content .lc_article .cta").animate({
        opacity:"1"
    })
    $(this).animate({
        opacity:"1",
        right:"50px"
    },500)
}, function (){
    $("#left").animate({
        opacity:"0"
    },1000)
    $(this).animate({
        opacity:"0.5",
        right:"0px",
    },500)
    $("#r_content .lc_article .cta").animate({
        opacity:"0"
    })
})
$(".icon .circle").hover(function () {
    $(this).css("tranform","scale(2)");
    console.log("a");
}, function () {
    $(this).css("tranform","scale(2)");
    console.log("a");
})

//详情介绍
function intro(){
    $("#intro").animate({
        left:"0"
    });
    $("#intro svg").css("opacity","1")
    $(".i_close").css("opacity","1")
    setTimeout(function () {
        $("#right_img").animate({
            left:"50%",
            opacity:"1"
        },500)
        $(".header").css("opacity","0.5")
        $(".footer").css("opacity","0.5")
    },100);
}


function intro_close(){
    setTimeout(function () {
        $("#intro").animate({
            left:"-50%"
        });
        $("#intro svg").css("opacity","0")
        $(".i_close").css("opacity","0")
    },500)

    $("#right_img").animate({
        left:"-50%",
        opacity:"0"
    },1000)
    $(".header").css("opacity","1")
    $(".footer").css("opacity","1")
}



$(".entry").first().css("opacity","1").siblings().css("opacity","0.2");
var topp;
//滚动监听
$("#intro").scroll(function () {
    topp=$("#intro").scrollTop();
    if(topp<600){
        $(".entry").first().css("opacity","1").siblings().css("opacity","0.2");
        $("svg a").first().children("circle").attr({
            "r":"6.5",
            "stroke-width":"2.5" ,
            "fill-opacity":"0"
        })
        $("svg a").first().siblings().children("circle").attr({
            "r":"5",
            "stroke-width":"0" ,
            "fill-opacity":"1"
        });

    }else if(topp<1200){
        $(".entry").eq(1).css("opacity","1").siblings().css("opacity","0.2");
        $("svg a").eq(1).children("circle").attr({
            "r":"6.5",
            "stroke-width":"2.5" ,
            "fill-opacity":"0"
        })
        $("svg a").eq(1).siblings().children("circle").attr({
            "r":"5",
            "stroke-width":"0" ,
            "fill-opacity":"1"
        });

    }else if(topp<1800){
        $(".entry").eq(2).css("opacity","1").siblings().css("opacity","0.2");
        $("svg a").eq(2).children("circle").attr({
            "r":"6.5",
            "stroke-width":"2.5" ,
            "fill-opacity":"0"
        })
        $("svg a").eq(2).siblings().children("circle").attr({
            "r":"5",
            "stroke-width":"0" ,
            "fill-opacity":"1"
        });
    }else if(topp<2500){
        $(".entry").eq(3).css("opacity","1").siblings().css("opacity","0.2");
        $("svg a").eq(3).children("circle").attr({
            "r":"6.5",
            "stroke-width":"2.5" ,
            "fill-opacity":"0"
        })
        $("svg a").eq(3).siblings().children("circle").attr({
            "r":"5",
            "stroke-width":"0" ,
            "fill-opacity":"1"
        });

    }else{
        $(".entry").eq(4).css("opacity","1").siblings().css("opacity","0.2");
        $("svg a").eq(4).children("circle").attr({
            "r":"6.5",
            "stroke-width":"2.5" ,
            "fill-opacity":"0"
        })
        $("svg a").eq(4).siblings().children("circle").attr({
            "r":"5",
            "stroke-width":"0" ,
            "fill-opacity":"1"
        });
    }
})
console.log($("svg a circle").siblings());

//点击事件
$("svg a").click(function () {
    $(".entry").eq($(this).index()).css("opacity","1").siblings().css("opacity","0.2");
    console.log($(this).index());
    $(this).children("circle").attr({
        "r":"6.5",
        "stroke-width":"2.5" ,
        "fill-opacity":"0"
    })
    $(this).siblings().children("circle").attr({
        "r":"5",
        "stroke-width":"0" ,
        "fill-opacity":"1"
    });
})