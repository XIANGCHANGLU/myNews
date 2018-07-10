<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags"%> 

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>

	<head>
		
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<meta name="renderer" content="webkit">
		<title>拼图后台管理-后台管理</title>
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
	 	var aname= document.getElementById("head").value;
	 	var apassword = document.getElementById("content").value;
	 	
	 	if(aname==""){
	 		alert("标题为空");
	 		return false;
	 	}
        if(apassword==""){
        	alert("内容为空");
        	return false;
        }	 
	 }
	</script>

	</head>

	<body>
	<s:action name="listCategory" namespace="/"></s:action>
	<s:action name="allNews" namespace="/"></s:action>
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

                        <li><a href="AddCategory_user.jsp" class="icon-file">发布类型</a></li>
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
		
		
		<form action="updateNews" method="post" onsubmit="return check()">
		<div class="admin">

			<div class="tab">
				<div class="tab-head">
					<strong>修改文章</strong>
				</div>
				<div class="tab-body">
					<br />
					<div class="tab-body">
						<br/>
						<div class="tab-panel active" id="tab-set">

								<div class="form_row">
										<label>文章编号</label>
										<br/>
										 <select  id="check_type" style="width:100%;height: 100%;" name="nid">
				                               <c:forEach items="${listNews}" var="item">
				                               		<option value="${item.nid }">${item.nid }</option>
				                               </c:forEach>
				                           </select>
										</div>
								<br />
								<br />
								<div class="form-group">
									<div class="field">
										<label>文章标题</label> <input type="text" class="input" id="head" size="50"
															name="head"	   value=""/>
									</div>
									<br>
									<br>
									<div class="form_row">
										<label>文章类型</label>
										<br/>
										 <select  id="check_type" style="width:100%;height: 100%;" name="cid">
				                               <c:forEach items="${listcategory}" var="item">
				                               		<option value="${item.cid }">${item.categoryname }</option>
				                               </c:forEach>
				                           </select>
									</div>
									<br>
									<br>
								</div>
								<div class="form-group">
									<div class="field">
										<label>内容详情</label>
										<textarea class="input" id="content" rows="20" cols="50" value="content" name="content"></textarea>
									</div>
								</div>
								<div class="form-button" align="left">
									<button class="button bg-main" >提交修改</button>
								</div>


						</div>

					</div>

				</div>
			</div>
		</div>
		</form>

	</body>

</html>