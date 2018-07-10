<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags"%> 

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>

	<head>
		
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<meta name="renderer" content="webkit">
		<title>首页</title>
		<link rel="stylesheet" href="http://www.pintuer.com/css/pintuer.css">
		<link rel="stylesheet" href="css/admin.css">
		<script src="http://www.pintuer.com/js/jquery.js"></script>
		<script src="http://www.pintuer.com/js/pintuer.js"></script>

		<script src="js/admin.js"></script>
		<script type=text/javascript src=js/addNews.js></script>

		<link type="image/x-icon" href="http://www.pintuer.com/favicon.ico" rel="shortcut icon" />
		<link href="http://www.pintuer.com/favicon.ico" rel="bookmark icon" />
	</head>

	<body>
	<s:action name="findNewsByCid" namespace="/"></s:action>
	<s:action name="listCategory" namespace="/"></s:action>
		<div class="lefter">
			<div class="logo">
				<a href="http://www.pintuer.com" target="_blank"><img src="images/logo.png" alt="后台管理系统" /></a>
			</div>
		</div>
		<div class="righter nav-navicon" id="admin-nav">
			<div class="mainer">
				<div class="admin-navbar">
					<span class="float-right">
                   <a class="button button-little bg-main" href="index_event.jsp">前台首页</a>
                    <a class="button button-little bg-yellow" href="login_user.jsp">登录</a>
                </span>
					<ul class="nav nav-inline admin-nav">
						 <li class="active"><a href="index_event.jsp" class="icon-cog">首页</a>  
						 	<ul>
								<li><a href="FindNews.jsp">标题查询</a></li>
								<li><a href="FindNews_categoryname.jsp">类型查询</a></li>
								
							</ul>
						  </li>	
					</ul>
				</div>
				<div class="admin-bread">
					
					<ul class="bread">

						<li>  </li>
					</ul>
				</div>
			</div>
		</div>
		
		
		<form action="findNewsBycategoryname" method="post">
		
		<div class="admin">

			<div class="tab">
				<div class="tab-head">
					<strong>标题查询</strong>
				</div>
				<div class="tab-body">
					<br />
					<div class="tab-body">
						<br/>
						<div class="tab-panel active" id="tab-set">



								<div class="form-group">

									<div class="field">
										<label>类型查询</label> <!-- <input type="text" class="input" id="check_head" size="50"
															name="head"	   value=""/> -->
									 <select  id="check_type" style="width:100%;height: 100%;" name="cid">
				                               <c:forEach items="${listcategory}" var="item">
				                               		<option value="${item.cid }">${item.categoryname }</option>
				                               </c:forEach>
				                           </select>						
									</div>
								<br/>
								<div class="form-button" align="left">
									<button class="button bg-main" >提交查询</button>
								</div>			
						
			</div>		
		</div>
		</form>
		<br/>
		<br/>
		
		<div class="panel admin-panel">
        <div class="panel-head"><strong>新闻列表</strong></div>
        <table class="table table-hover">
            <tr>
                 <th width="300">标题</th>
                 <th width="100">作者</th>
                 <th width="100">时间</th>
                 <th width="100">类别</th>
            </tr>
			 <c:forEach items="${listNewsBycategorycid}" var="item">
               	<tr>
               <td>${item.head }
                    </td>
               <td>
               	  ${item.user.username }
               </td>
                <td>
                	${item.publish_time }
                </td>
                <td>
                	${item.category.categoryname }
                </td>
                    </tr>
              </c:forEach>
        </table>
    

    </div>
	</body>

</html>