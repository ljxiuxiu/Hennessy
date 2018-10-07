$(".swiper-slide").width($(window).width());
$(".c-menu_div_wrapper").width($(window).width());
$(".swiper-menu_prev").width($(window).width()*0.5);
$(".c-menu-dropdown__box").width(($(window).width())*0.23);
var $parent=$(".swiper-wrapper");
var content=$(".swiper-div");
var c_menu=$(".c-menu_div");
var swiper_menu=$(".swiper-menu_content");
var flag=false;


$(".swiper-menu_prev").eq(0).hide();

var i=1;        //每次滑动1个
var page=1;        //默认第一页

//        获取总长度
var c_width=$parent.width();

var len=content.find(".swiper-slide").length;      //有多少个li
//计算页数
var pageCount=Math.ceil(len/i);     //向上取整
//        下一页
$("#swiper-button-next").click(function () {
    //  is()  判断是否在某一个状态        是为true 否为false      ：animated  是否正在动画中
    //  判断动画完成之后，我们再添加动画
    if( !content.is(":animated") ){
        if(page==pageCount){
            //最后一张  返回第一张
            content.animate({left:"0px"},"slow");
            //swiper_menu.animate({left:"0px"},"slow");
            page=1;
        }else{
            content.animate({left:"-="+c_width},"slow");
            //swiper_menu.animate({left:"-="+c_width*0.5},"slow");
            page++;
        }
    }
    $(".c-menu-dropdown__box").eq(page-1).addClass("c-menu-dropdown__box-current").siblings().removeClass("c-menu-dropdown__box-current");
    $(".swiper-menu_prev").eq(page).hide().siblings().show();

});

//        上一页
$("#swiper-button-prev").click(function () {
    //  is()  判断是否在某一个状态        是为true 否为false      ：animated  是否正在动画中
    //  判断动画完成之后，我们再添加动画
    if( !content.is(":animated") ){
        if(page==1){
            //  第一张  返回最后一张
            content.animate({left:"-="+c_width*(pageCount-1)},"slow");
            //swiper_menu.animate({left:"-="+c_width*0.5*(pageCount-1)},"slow");
            page=pageCount;
        }else{
            content.animate({left:"+="+c_width},"slow");
            //swiper_menu.animate({left:"+="+c_width*0.5},"slow");
            page--;
        }
    }
    console.log(page);
    $(".c-menu-dropdown__box").eq(page-1).addClass("c-menu-dropdown__box-current").siblings().removeClass("c-menu-dropdown__box-current");
    $(".swiper-menu_prev").eq(page+1).hide().siblings().show();
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
    content.animate({left:"-="+($(".swiper-slide").eq($(this).index()).offset().left)},"slow");
    swiper_menu.animate({left:"-="+($(".swiper-slide").eq($(this).index()).offset().left*0.5)},"slow");
    page=$(this).index()+1;
    $(this).addClass("c-menu-dropdown__box-current").siblings().removeClass("c-menu-dropdown__box-current");

    $(".swiper-menu_prev").eq(page).hide().siblings().show();
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
    page=$(this).index()-1;
    if(page<5){
        $(this).hide().siblings().show();
        content.animate({left:"-="+($(".swiper-slide").eq(page).offset().left)},"slow");
        swiper_menu.animate({left:"-="+($(".swiper-slide").eq(page).offset().left*0.5)},"slow");
    }

})

