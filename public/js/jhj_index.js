$(function(){
    //默认当前
    $(".nav-parts li").eq(0).attr("class","current");

    $(".nav-year").first().children("li").eq(0).attr("class","active");
    $(".nav-year").eq(1).children("li").eq(0).attr("class","active");
    $(".nav-year").eq(2).children("li").eq(0).attr("class","active");
    $(".nav-year").last().children("li").eq(0).attr("class","active");


    $(".tab-pane").first().addClass("active");
    $(".sliders").first().children(".item").addClass("active");

    //类别

    $(".nav-parts li").click(function(){
        $(".nav-parts li").attr("class","");
        $(".tab-pane").removeClass("active");
        $(this).attr("class","current");
        $(".tab-pane").eq($(this).index()).addClass("active");
        if($(this).index()==0){
            $(".sliders").eq($(this).index()).css("width","2500px");
        }
        if($(this).index()==1){
            $(".sliders").eq($(this).index()).css("width","6250px");
        }
        if($(this).index()==2){
            $(".sliders").eq($(this).index()).css("width","3750px");
        }
        if($(this).index()==3){
            $(".sliders").eq($(this).index()).css("width","1250px");
        }
    });
    //类别下的各年代
    $(".nav-year").first().children("li").click(function(){
        $(".nav-year").first().children("li").attr("class","");
        $(".sliders").first().children(".item").removeClass("active");
        $(this).attr("class","active");
        $(".sliders").first().children(".item").eq($(this).index()).addClass("active");
        $(".sliders").first().animate(
            {
                marginLeft:"-"+$(".sliders").first().width()*$(this).index()*0.5+"px"
            },500);
    });

    $(".nav-year").eq(1).children("li").click(function(){
        $(".nav-year").eq(1).children("li").attr("class","");
        $(".sliders").eq(1).children(".item").removeClass("active");
        $(this).attr("class","active");
        $(".sliders").eq(1).children(".item").eq($(this).index()).addClass("active");
        $(".sliders").eq(1).animate(
            {
                marginLeft:"-"+$(".sliders").eq(1).width()*$(this).index()*0.2+"px"
            },500);
    });

    $(".nav-year").eq(2).children("li").click(function(){
        $(".nav-year").eq(2).children("li").attr("class","");
        $(".sliders").eq(2).children(".item").removeClass("active");
        $(this).attr("class","active");
        $(".sliders").eq(2).children(".item").eq($(this).index()).addClass("active");
        $(".sliders").eq(2).animate(
            {
                marginLeft:"-"+$(".sliders").eq(2).width()*$(this).index()*(1/3)+"px"

            },500);
    });
    //鼠标感知方向遮罩
    (function(b) {
        b.fn.extend({
            "mouseMove": function(c) {
                $this = b(this);
                $this.hover(function(k) {
                    var u = b(this).find(c);
                    var p = k.clientX;
                    var n = k.clientY;
                    var s = parseInt(b(this).offset().top);
                    var o = parseInt(s + b(this).height());
                    var g = parseInt(b(this).offset().left);
                    var d = parseInt(g + b(this).width());
                    var m = Math.abs(n - s);
                    var j = Math.abs(n - o);
                    var i = Math.abs(p - g);
                    var f = Math.abs(p - d);
                    var h = Math.min(m, j, i, f);
                    var q = k.type;
                    switch (h) {
                        case m:
                            a("top", q, u);
                            break;
                        case j:
                            a("bottom", q, u);
                            break;
                        case i:
                            a("left", q, u);
                            break;
                        case f:
                            a("right", q, u)
                    }
                })
            }
        });
        function a(c, d, f) {
            var e = 300;
            if (c == "top") {
                if (d == "mouseenter") {
                    b(b(f)[0]).stop(true, true);
                    b(b(f)[0]).css({
                        display: "block",
                        top: "-100%",
                        left: "0"
                    }).animate({
                            top: 0,
                            left: 0
                        },
                        e)
                } else {
                    b(b(f)[0]).animate({
                            display: "block",
                            top: "-100%",
                            left: "0"
                        },
                        e)
                }
            }
            if (c == "left") {
                if (d == "mouseenter") {
                    b(b(f)[0]).stop(true, true);
                    b(b(f)[0]).css({
                        display: "block",
                        top: "0",
                        left: "-100%"
                    }).animate({
                            left: 0,
                            top: 0
                        },
                        e)
                } else {
                    b(b(f)[0]).animate({
                            display: "block",
                            left: "-100%"
                        },
                        e)
                }
            }
            if (c == "bottom") {
                if (d == "mouseenter") {
                    b(b(f)[0]).stop(true, true);
                    b(b(f)[0]).css({
                        display: "block",
                        top: "100%",
                        left: "0"
                    }).animate({
                            top: 0,
                            left: 0
                        },
                        e)
                } else {
                    b(b(f)[0]).animate({
                            display: "block",
                            top: "100%",
                            left: "0"
                        },
                        e)
                }
            }
            if (c == "right") {
                if (d == "mouseenter") {
                    b(b(f)[0]).stop(true, true);
                    b(b(f)[0]).css({
                        display: "block",
                        top: 0,
                        left: "100%"
                    }).animate({
                            left: "0%",
                            top: 0
                        },
                        e)
                } else {
                    b(b(f)[0]).animate({
                            display: "block",
                            left: "100%"
                        },
                        e)
                }
            }
        }
    })(window.jQuery);

    $('.in').mouseMove('#mask');

    //过滤筛选

    $("#btn-filter").click(function(){
         $(this).parent().css("display","none");
         $(".dropDown").slideDown();
        $(".close").css("display","block");
    });
    $(".close").click(function(){
        $(this).parent().slideUp();
        $(this).css("display","none");
        $(".filter-tag").css("display","block");
    });

    var labs=document.querySelectorAll(".dropDown label");
    for(var i=0;i<labs.length;i++){
        labs[i].onoff=true;
        labs[i].index=i;
        labs[i].onclick=function(){
            for(var i=0;i<labs.length;i++){
                if(i!=this.index){
                    labs[i].style.background="url(../../public/images/bgd-checkbox-uncheck.png) no-repeat";
                    labs[i].onoff=true;
                }
            }
            if(this.onoff){
                this.style.background="url(../../public/images/bgd-checkbox-checked.png)  no-repeat";

            }else{
                this.style.background="url(../../public/images/bgd-checkbox-uncheck.png) no-repeat";
            }
            this.onoff=!this.onoff;
        }

    }
});




