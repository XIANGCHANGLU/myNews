<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>发布类型</title>
    
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<meta name="renderer" content="webkit">
	<link rel="stylesheet" href="http://www.pintuer.com/css/pintuer.css">
	<link rel="stylesheet" href="css/admin.css">
	<script src="http://www.pintuer.com/js/jquery.js"></script>
	<script src="http://www.pintuer.com/js/pintuer.js"></script>

	<script src="js/admin.js"></script>
	<script type=text/javascript src=js/addNews.js></script>
	<link type="image/x-icon" href="http://www.pintuer.com/favicon.ico" rel="shortcut icon" />
	<link href="http://www.pintuer.com/favicon.ico" rel="bookmark icon" />
		<script type="text/javascript">
	 function check(){
	 	var name= document.getElementById("categoryname").value;
	 	
	 	if(name==""){
	 		alert("类型名为空");
	 		return false;
	 	}
    
	 }
	</script>

	</head>

	<body>
	
		<div class="lefter">
			<div class="logo">
				<a href="http://www.pintuer.com" target="_blank"><img src="images/logo.png" alt="后台管理系统" /></a>
			</div>
		</div>
		<div class="righter nav-navicon" id="admin-nav">
			<div class="mainer">
				<div class="admin-navbar">
					<span class="float-right">
                    <a class="button button-little bg-main" href="#">前台首页</a>
                    <a class="button button-little bg-yellow" href="login.html">注销登录</a>
                </span>
					<ul class="nav nav-inline admin-nav">
						<li >
							<a href="content_user.jsp" class="icon-file-text">查看文章</a>
						</li>
                        <li ><a href="AddCategory_user.jsp" class="icon-file">发布类型</a></li>
                        <li><a href="AllNews_user.jsp" class="icon-th-list">文章详情</a></li>
						<li><a href="AddNews_user.jsp" class="icon-file">发布文章</a></li>
						 <li><a href="FindNews_user.jsp" class="icon-cog">查询文章</a>   </li>
						  <li><a href="UpdateNews_user.jsp" class="icon-cog">修改文章</a>   </li>		
					</ul>
				</div>
				<div class="admin-bread">
					<span>您好，${username}，欢迎您的光临。</span>
					<ul class="bread">

						<li>  </li>
					</ul>
				</div>
			</div>
		</div>
		<form action="addCategory" method="post" onsubmit="return check()">
		<div class="admin">

			<div class="tab">
				<div class="tab-head">
					<strong>发布新类型</strong>
				</div>
				<div class="tab-body">
					<br />
					<div class="tab-body">
						<br/>
						<div class="tab-panel active" id="tab-set">
								<div class="form-group">
									<div class="field">
										<label>文章类型</label> <input type="text" class="input" id="categoryname" size="50"
															name="categoryname"	   value=""/>
									</div>
									<br>
									<br>
									<br>
								<div class="form-button" align="left">
									<button class="button bg-main" >提交发布</button>
								</div>


						</div>

					</div>

				</div>
			</div>
		</div>
		</form>

	</body>

</html>