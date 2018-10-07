$(function () {
    var $loginBox=$("#loginBox");
    var $regBox=$("#regBox");
    
    //注册
    $regBox.find('[name="reg"]').on('click', function () {
        var uname=$regBox.find('[name="Name"]').val();
        var pwd=$regBox.find('[name="Password"]').val();
        var repwd=$regBox.find('[name="rePassword"]').val();
        if(uname==null || uname=='' || pwd==null || pwd==''){
            alert("用户名或密码不能为空");
            return;
        }

        if(pwd!=repwd){
            alert("输入的两次密码不一致");
            return;
        }
        
        $.ajax({
            type:"post",
            url:"/reg",
            data:{
                uname:uname,
                pwd:pwd
            },
            dataType:"json",
            success: function (data) {
                $("#zc_message").html(data.message);
                if(data.code==1){
                    $regBox.find('[name="Password"]').val("");
                    $regBox.find('[name="rePassword"]').val("");
                }
                if(data.code==2){
                    setTimeout(function () {
                        $regBox.find('[name="Name"]').val("");
                        $regBox.find('[name="Password"]').val("");
                        $regBox.find('[name="rePassword"]').val("");
                        $("#zc_message").html("");
                    },1000);
                }
            }
        })

    })

    //登录
    $loginBox.find('[name="login"]').on('click', function () {
        console.log("a");
        var uname=$loginBox.find('[name="Userame"]').val();
        var pwd=$loginBox.find('[name="Password"]').val();

        if(uname==null || uname=='' || pwd==null || pwd==''){
            alert("用户名或密码不能为空");
            return;
        }else if($("input[type='checkbox']").prop("checked")){    //记住密码 true 为选中
            //开始存cookie
            if(navigator.cookieEnabled){   //查看这个浏览器是否支持cookie
                var date=new Date();
                date.setTime( date.getTime()+600*1000 );   //单位是毫秒
                //开始拼接
                document.cookie=uname+"="+pwd+";expires="+date.toGMTString();
            }
        }



        $.ajax({
            type:"post",
            url:"/login",
            data:{
                uname:uname,
                pwd:pwd
            },
            dataType:"json",
            success: function (result) {
                $loginBox.find("#login_message").html(result.message);
                if(result.code==1){
                    $loginBox.find('[name="Password"]').val("");
                }
                if(result.code==2){
                    setTimeout(function () {
                        $("#login").hide();
                    },1000);
                    window.location.reload();
                }
            }
        })
    })

    //记住密码
    var cok=document.cookie;
    if(cok!=null && cok!=""){
        var valu=cok.split(";")[0];  //以分号隔开，的第一个元素
        $loginBox.find('[name="Userame"]').val(valu.split("=")[0]);
        $loginBox.find('[name="Password"]').val(valu.split("=")[1]);
    }

    $("#close").click(function () {
        $("#login").hide();
    })
})
