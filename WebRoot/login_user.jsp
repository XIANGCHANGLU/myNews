<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <meta name="renderer" content="webkit">
    <title>用户登录</title>

    <link rel="stylesheet" href="http://www.pintuer.com/css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="http://www.pintuer.com/js/jquery.js"></script>
    <script src="http://www.pintuer.com/js/pintuer.js"></script>
    <script src="http://www.pintuer.com/js/respond.js"></script>
    <script src="js/admin.js"></script>
    <link type="image/x-icon" href="http://www.pintuer.com/favicon.ico" rel="shortcut icon"/>
    <link href="http://www.pintuer.com/favicon.ico" rel="bookmark icon"/>
	<script type="text/javascript">
	 function check(){
	 	var aname= document.getElementById("username").value;
	 	var apassword = document.getElementById("password").value;
	 	if(aname==""){
	 		alert("账号名为空");
	 		return false;
	 	}
        if(apassword==""){
        	alert("密码为空");
        	return false;
        }	 
	 }
	</script>
</head>

<body>
<div class="container">
    <div class="line">
        <div class="xs6 xm4 xs3-move xm4-move">
            <br/>
            <br/>
            <div class="media media-y">
                <a  target="_blank"><img src="images/logo1.png" class="radius"
                                                                      alt="后台管理系统"/></a>
            </div>
            <br/>
            <br/>
            <form method="post" action="user_Login" onsubmit="return check()">
                <div class="panel">
                    <div class="panel-head"><strong>用户登录</strong></div>
                    <div class="panel-body" style="padding:30px;">
                        <div class="form-group">
                            <div class="field field-icon-right">
                                <input type="text" class="input" name="username" placeholder="Username" id="username"/>
                                <span class="icon icon-user"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="field field-icon-right">
                                <input type="password" class="input" name="password" placeholder="Password" id="password"/>
                                <span class="icon icon-key"></span>
                            </div>
                        </div>

                    </div>
                    <div class="panel-foot text-center">
                        <button class="button button-block bg-main text-big">登录</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>


</body>

</html>