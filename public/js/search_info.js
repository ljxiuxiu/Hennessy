var mainHeight=0;
var mainHeight2=0;
var mainHeight3=0;
var mainHeight4=0;
var mainHeight5=0;
var length=$(".title strong").first().html();

for(var i=0;i<8;i++){
    mainHeight+=$(".s_info").eq(i).height()+20;
}
for(var i=8;i<16;i++){
    mainHeight2+=$(".s_info").eq(i).height()+20;
}
for(var i=16;i<24;i++){
    mainHeight3+=$(".s_info").eq(i).height()+20;
}
for(var i=24;i<32;i++){
    mainHeight4+=$(".s_info").eq(i).height()+20;
}
for(var i=32;i<40;i++){
    mainHeight5+=$(".s_info").eq(i).height()+20;
}
var arr=[mainHeight,mainHeight2,mainHeight3+20,mainHeight4,mainHeight5];
$("#main_c").height(mainHeight);
var page=0;
var i=Math.ceil(length/8);
$(".l_prev").click(function () {
    if( !$(".main").is(":animated") ){
        if((page+1)==i){
            //最后一张  返回第一张
            $(".main").animate({top:"0px"})
            page=0;
            $("#main_c").height(arr[page]);
        }else{
            $(".main").animate({top:"-="+arr[page]})
            page++;
            $("#main_c").height(arr[page]);
        }
    }
})

