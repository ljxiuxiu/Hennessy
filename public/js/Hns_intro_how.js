$(".swiper-slide").width($(window).width());
$(".c-menu_div_wrapper").width($(window).width());
$(".swiper-menu_prev").width($(window).width()*0.5);
$(".c-menu-dropdown__box").width(($(window).width())*0.23);
var $parent=$(".swiper-wrapper");
var content=$(".swiper-div");
var c_menu=$(".c-menu_div");
var swiper_menu=$(".swiper-menu_content");
var flag=false;
$(".swiper-wrapper").height($(".swiper-div").height()+$(".c-menu_div_wrapper").height()+$(".c-menu__wrapper").height()+$(".swiper-menu").height());

var ii;

var i=1;        //每次滑动1个
var hash=window.location.hash;
var page=hash.substr(5);

$(".swiper-menu_prev").eq(parseInt(page)-1).show();
$(".swiper-menu_prev").eq(parseInt(page)+1).show();

//        获取总长度
var c_width=$parent.width();
$(".c-menu-dropdown__box").eq(page-1).addClass("c-menu-dropdown__box-current");

var len=content.find(".swiper-slide").length;      //有多少个li
//计算页数
var pageCount=Math.ceil(len/i);     //向上取整
//        下一页
$("#swiper-button-next").click(function () {
    //  is()  判断是否在某一个状态        是为true 否为false      ：animated  是否正在动画中
    //  判断动画完成之后，我们再添加动画
    if( !content.is(":animated") ){
        if(page>=pageCount){
            //最后一张  返回第一张
            //content.animate({left:"0px"},"slow");
            page=1;
            window.location.hash="#page"+page;
        }else{
            page++;
            //content.animate({left:"-="+c_width},"slow");
            window.location.hash="#page"+page;
        }
    }
    $(".c-menu-dropdown__box").eq(page-1).addClass("c-menu-dropdown__box-current").siblings().removeClass("c-menu-dropdown__box-current");
    anim();
});

//        上一页
$("#swiper-button-prev").click(function () {
    //  is()  判断是否在某一个状态        是为true 否为false      ：animated  是否正在动画中
    //  判断动画完成之后，我们再添加动画
    if( !content.is(":animated") ){
        if(page<=1){
            //  第一张  返回最后一张
            window.location.hash="#page"+pageCount;
            //content.animate({left:"+=0"},"slow");
            page=pageCount;
        }else{
            page--;
            window.location.hash="#page"+page;
            //content.animate({left:"+="+c_width},"slow");
        }
    }
    $(".c-menu-dropdown__box").eq(page-1).addClass("c-menu-dropdown__box-current").siblings().removeClass("c-menu-dropdown__box-current");
    anim();
});

$(".js-swiper-next").click(function () {
    $(".c-menu-dropdown__list").animate({
        left:-($(".c-menu-dropdown__box").width())+95
    });
    $(this).hide();
    $(".js-swiper-prev").show(500);
})
$(".js-swiper-prev").click(function () {
    $(".c-menu-dropdown__list").animate({
        left:0
    });
    $(this).hide();
    $(".js-swiper-next").show(500);
})

$(".ssgy").click(function () {
    if(flag){
        $(".c-menu-dropdown__container-list").slideUp();
        $(".c-menu__wrapper").css({
            background:"transparent",
            transition:"all .3s linear .3s"
        });
        $("header").css({
            background:"transparent",
            transition:"all .3s linear .3s"
        });
        $(".o-layout__item ul li span").css({
            transform:"rotate(0deg)",
            transition:"all .3s linear "
        });
        $(".col-sm-4 ul li span").css({
            transform:"rotate(0deg)",
            transition:"all .3s linear"
        });
    }else{
        $("header").css("background","#000");
        $(".c-menu-dropdown__container-list").slideDown(500);
        $(".c-menu__wrapper").css("background","#000");
        $("header").css("background","#000");
        $(".o-layout__item ul li span").css({
            transform:"rotate(180deg)",
            transition:"all .3s linear"
        });
        $(".col-sm-4 ul li span").css({
            transform:"rotate(180deg)",
            transition:"all .3s linear"
        });
    }
    flag=!flag;

})
var timer;
$(window).scroll(function () {
    $(".c-menu-dropdown__container-list").slideUp();
    $(".c-menu__wrapper").css({
        background:"transparent",
        transition:"all .3s linear .3s"
    });
    $(".o-layout__item ul li span").css({
        transform:"rotate(0deg)",
        transition:"all .3s linear "
    });


    if(timer){
        clearTimeout(timer);
    }

    timer=setTimeout(function () {
        flag=false
    },1000);
})

$(".c-menu-dropdown__box").click(function () {
    window.location.hash="#page"+($(this).index()+1);
    page=$(this).index()+1;
    console.log(page);
    ii=window.location.hash.substr(5);
    console.log(window.location.hash);
    $(".c-menu-dropdown__container-list").slideUp();
    $(".c-menu__wrapper").css({
        background:"transparent",
        transition:"all .3s linear .3s"
    });
    $(".o-layout__item ul li span").css({
        transform:"rotate(0deg)",
        transition:"all .3s linear "
    });
    flag=!flag;
    anim();
    $(this).addClass("c-menu-dropdown__box-current").siblings().removeClass("c-menu-dropdown__box-current");
})

$(".swiper-menu_text").hover(function () {
    $(this).animate({
        opacity:1,
        top:"25%"
    })
    $(this).children(".cta").animate({
        opacity:1

    })
}, function () {
    $(this).animate({
        opacity:.4,
        top:"33%"
    })
    $(this).children(".cta").animate({
        opacity:0
    })
})

$(".swiper-menu_prev").click(function () {
    page=$(this).index();
    window.location.hash="#page"+page;
    $(".c-menu-dropdown__box").eq($(this).index()-1).addClass("c-menu-dropdown__box-current").siblings().removeClass("c-menu-dropdown__box-current");
    console.log(page);

    if($(this).index()==0){
        page=5;
        window.location.hash="#page"+page;
        $(".swiper-menu_prev").eq((page)-1).show().prev().hide();
        $(".swiper-menu_prev").eq(page).hide();
        $(".swiper-menu_prev").last().show().next().hide();
    }else if($(this).index()==6){
        page=1;
        window.location.hash="#page"+page;
        $(".swiper-menu_prev").eq((page)+1).show().prev().hide();
        $(".swiper-menu_prev").eq(page).hide();
        $(".swiper-menu_prev").first().show().next().hide();
    }else{
        anim();
    }
})

function anim(){
    $(".swiper-menu_prev").eq((page)-1).show().prev().hide();
    $(".swiper-menu_prev").eq(page).hide();
    $(".swiper-menu_prev").eq(page+1).show().next().hide();
}