//  enter 进入前页面
for(var i=new Date().getFullYear();i>1900;i--){
    //封装方法
    addOption("select-age",i);
    addLi("form_ul",i);
}
function addOption(id,value){
    var option=document.createElement("option");
    //设置value属性
    option.value=value;
    //设置文本内容
    option.text=value;

    //根据ID得到DOM
    var sel=document.getElementById(id);
    //添加到网页里面去
    //得到这个select下面所有的options
    sel.options.add(option);   //select独有的

}
function addLi(id,value){
    var li=document.createElement("li");
    li.innerHTML=value;
    var ul=document.getElementById("form_ul");
    //console.log(ula.innerHTML);
    ul.appendChild(li);
}
$("#select-age").click(function (event) {
    event.stopPropagation();
    $(".select_Bir label").hide();
    $(".form-list").show();
    $("#enter").click(function () {
//            那么#select-age也属于#enter，点击#enter也会让自己隐藏,阻止冒泡事件
        $(".select_Bir label").show();
        $(".form-list").hide();
    })
})
$("#form_ul li").click(function () {
    $(".select_Bir label").show();
    $(".form-list").hide();
    $(".select_Bir label").html($(this).html());
})

$("form #sub").click(function () {
    var year=$(".select_Bir label").html();
    var NowYear=new Date().getFullYear();
    var age=NowYear-year;
    console.log(age);
    if(isNaN(year)){
        $(".form_attention").show();
    }else if(age<18){
        $(".form_attention").html("YOU ARE NOT OF PURCHASING AGE.").show();
    }else{
        location.href="/index";
    }
})