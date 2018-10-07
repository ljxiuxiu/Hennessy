$(function () {
    var flag=false;
    var timer;
    //  jQuery的animate无法支持transform
    $(".burger_btn").click(function () {
        $("a").css("text-decoration","none");
        if(flag){
            $(".icon_1").css({
                top:"0px",
                transform: "matrix(1, 0, 0, 1, 0, 0)",
                transition:"all 0.4s linear"
            })
            $(".icon_2").css({
                "opacity":"1",
                transition:"all 0.3s linear"
            });
            $(".icon_3").css({
                top:"16px",
                transform: "matrix(1, 0, 0, 1, 0, 0)",
                transition:"all 0.4s linear"
            })
            $("#list").css({
                "left":"-305px",
                "transition":"left 0.3s ease-out"
            })

        }else{
            $(".icon_1").css({
                top:"8px",
                transform: "matrix(0.701, 0.701, -0.701, 0.701, 0, 0)",
                transition:"all 0.4s linear"
            })
            $(".icon_2").css({
                "opacity":"0",
                transition:"all 0.3s linear"
            })
            $(".icon_3").css({
                top:"8px",
                transform: "matrix(0.701, -0.701, 0.701, 0.701, 0, 0)",
                transition:"all 0.4s linear"
            })
            $("#list").css({
                "left":"0px",
                "transition":"left 0.3s ease-in"
            })
        }
        flag=!flag;
    })

    var divs=document.querySelectorAll(".xxx");
    for(var i=0;i<3;i++){
        divs[i].onoff=true;
        divs[i].index=i;
        divs[i].onclick= function () {
            for(var i=0;i<3;i++){
                if(i!=this.index){
                    divs[i].onoff=true;
                    $(".xxx").eq(i).children(".list_gy").slideUp();
                    $(".xxx").eq(i).find(".careta").css("background","url('../../public/images/arrow-right.png' )  no-repeat");
                    $(".xxx").eq(i).hover(function () {
                        $(this).find(".careta").css("background","url('../../public/images/aright.png' )  no-repeat")
                    }, function () {
                        $(this).find(".careta").css("background","url('../../public/images/arrow-right.png' )  no-repeat")
                    })
                    if(i==0){
                        $(".list_ul").css({
                            "height":"100%",
                            "overflow":"auto"
                        });
                    }
                }
            }
            if(this.onoff){
                $(this).children(".list_gy").slideDown();
                $(this).find(".careta") .css("background","url('../../public/images/adown.png' )  no-repeat")
                $(this).hover(function () {
                    $(this).find(".careta").css("background","url('../../public/images/adown.png' )  no-repeat")
                }, function () {
                    $(this).find(".careta").css("background","url('../../public/images/arrow-down.png' )  no-repeat")
                })
                if($(this).index()==1){
                    $(".list_ul").css({
                        "height":"580px",
                        "overflow":"scroll"
                    });
                }
            }else{
                $(this).children(".list_gy").slideUp();
                $(this).find(".careta").css("background","url('../../public/images/arrow-right.png' )  no-repeat")
                $(this).hover(function () {
                    $(this).find(".careta").css("background","url('../../public/images/aright.png' )  no-repeat")
                }, function () {
                    $(this).find(".careta").css("background","url('../../public/images/arrow-right.png' )  no-repeat")
                })
                if($(this).index()==1){
                    $(".list_ul").css({
                        "height":"100%",
                        "overflow":"auto"
                    });
                }
            }
            this.onoff=!this.onoff;
        }
    }

    $(window).scroll(function () {
        $(".icon_1").css({
            top:"0px",
            transform: "matrix(1, 0, 0, 1, 0, 0)",
            transition:"all 0.4s linear"
        })
        $(".icon_2").css({
            "opacity":"1",
            transition:"all 0.3s linear"
        });
        $(".icon_3").css({
            top:"16px",
            transform: "matrix(1, 0, 0, 1, 0, 0)",
            transition:"all 0.4s linear"
        })
        $("#list").css({
            "left":"-305px",
            "transition":"left 0.3s ease-in"
        })
        $("#search").slideUp();
        $(".search").show();
        //监听滚动结束
        if(timer)
            clearTimeout(timer);

        timer = setTimeout(function(){
            flag=false;
        },1000)
        //flag=!flag;

        var topp=$(document).scrollTop();

        if(topp>0){
            $(".logo img").first().hide();
            $(".logo img").last().show();
            $("#search").css("top","91px");
            $("header").css("height","91px");
            $("#lb").css("margin-top","91px");
            $("#news h2").fadeIn(500);
            $("#line").hide();
        }else{
            $(".logo img").first().show();
            $(".logo img").last().hide();
            $("#search").css("top","118px");
            $("header").css("height","117px");
            $("#lb").css("margin-top","117px");
            $("#line").show();
            $("#heading ").css("margin-top","118px");
        }

        if(topp>136){
            $("#news img").fadeIn(1000);
        }
        if(topp>320){
            $("#news h3").fadeIn(1000);
        }
        if(topp>360){
            $("#news p").show(1000);
            $(".ydgd").show(1100);
        }
    })

    var t;
    var index=0;
    //自动播放
    t=setInterval(play,8000);
    function play(){
        index++;
        if(index>2){
            index=0;
        }
        $("#imgs img").eq(index).show().siblings().hide();
        $("#content ul .h_li").eq(index).css("background","#F1E0A1").siblings().css("background","#45402E");
    }
    //移入清除定时器  定格在某张图片
    $("#content ul .h_li").mouseover(function () {
        $("#imgs img").eq($(this).index()).show().siblings().hide();
        $("#content ul .h_li").eq($(this).index()).css("background","#F1E0A1").siblings().css("background","#fff");
        clearInterval(t);
    });
    //移出后 继续使用定时器
    $("#content ul .h_li").mouseout(function () {
        t=setInterval(play,8000);
        index=$(this).index();
    });
    //点击前一张
    $("#content a.prev").click(function(){
        index--;
        if(index<0){
            index=2;
        }
        $("#imgs img").eq(index).show().siblings().hide();
        $("#content ul .h_li").eq(index).css("background","#F1E0A1").siblings().css("background","#fff");
    });
    //点击后一张
    $("#content a.next").click(function(){
        play();
    });

    $("div.form_close").click(function () {
        $("#search").slideUp();
        $("#lb").animate({
            marginTop:"117px"
        })
        $(".search").show();
    })
    $(".search").click(function () {
        $("#search").slideDown();
        $("#lb").animate({
            marginTop:"250px"
        })
        $(this).hide();
    })
    $("#submit-button-head").click(function () {
        var s_text=$("#search").find('[name="search_top"]').val();
        $.ajax({
            type:"post",
            url:"/search_info",
            data:{
                s_text:s_text
            }
        })
        location.href="/search_info";
    })
})

function lgout(){
    $.ajax({
        type:"post",
        url:"/exit",
        success: function (data) {
            if(data=="0"){
                alert("退出成功！");
                window.location.reload();
            }
        }
    })
}
function login(){
    $("#login").show();
}