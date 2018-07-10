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
		<base href="<%=basePath%>">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<meta name="renderer" content="webkit">
		<title>后台管理</title>
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
		
		 <div class="admin">
  <div class="panel admin-panel">
            <div class="panel-head"><strong>我的文章列表</strong></div>
       
           
            <table class="table table-hover">
                <tr>
                  
                    <th width="300">标题</th>
                    <th width="100">时间</th>
                    <th width="100">类别</th>
                    <th width="100">作者</th>
                    <th width="100">文档详情</th> 
                    <th width="100">删除</th>
                </tr>
            
               <c:forEach items="${listNews}" var="item">
               <tr>
              
               	
               <td>${item.head }
                    </td>
               <td>${item.publish_time }
                    </td> 
               <td>${item.category.categoryname }
                    </td> 
               <td>
               		${item.user.username }
               </td>
               <td>
               		<a href="finByid.action?nid=${item.nid }" ><img src="images/edit.png" alt="" title="" border="0"
                                  name="${item.nid }"    /></a>
               </td>
                <td>
                	<a href="deleteNews.action?nid=${item.nid }"><img src="images/trash.gif" alt="" title="" border="0"
                                    name="${item.nid }"         /></a>
                </td>
               </tr>
              </c:forEach>
			 
            </table>
 
        </div>
       			
       			<c:choose>
       				<c:when test="${empty NewsByid}">
       			<div class="tab-body">
					<br />
					<div class="tab-body">
						<div class="tab-panel active" id="tab-set">
								<div class="form-group">
									<div class="field">
										<label>文章标题</label> <input type="text" class="input" id="check_head" size="50"
																   value=""/>
									</div>
									<div class="field">
										<label>文章作者</label> <input type="text" class="input" id="check_type" size="50"
																   value=""/>
									</div>
									<div class="field">
										<label>发布时间</label> <input type="text" class="input" id="check_type" size="50"
															   value=""/>
									</div>
									<div class="field">
										<label>文章类型</label> <input type="text" class="input" id="check_type" size="50"
																   value=""/>
									</div>
								</div>
								<div class="form-group">

									<div class="field">
										<label>内容详情</label>
										<textarea class="input" id="check_content" rows="20" cols="50" value=""></textarea>
									</div>
								</div>
						</div>
					</div>
				</div>
       			</c:when>
       			</c:choose>
       			<c:forEach items="${NewsByid }" var="item">
				<div class="tab-body">
					<br />
					<div class="tab-body">
						<div class="tab-panel active" id="tab-set">
								<div class="form-group">
									<div class="field">
										<label>文章标题</label> <input type="text" class="input" id="check_head" size="50"
														name="${item.head }"		   value="${item.head }"/>
									</div>
									<div class="field">
										<label>文章作者</label> <input type="text" class="input" id="check_type" size="50"
															name="${item.user.username }"	   value="${item.user.username }"/>
									</div>
									<div class="field">
										<label>发布时间</label> <input type="text" class="input" id="check_type" size="50"
													name="${item.publish_time }"			   value="${item.publish_time }"/>
									</div>
									<div class="field">
										<label>文章类型</label> <input type="text" class="input" id="check_type" size="50"
													name="${item.category.categoryname }"			   value="${item.category.categoryname }"/>
									</div>
								</div>
								<div class="form-group">

									<div class="field">
										<label>内容详情</label>
										<textarea class="input" id="check_content" rows="20" cols="50" value="">${item.content }</textarea>
									</div>
								</div>
						</div>
					</div>
				</div>
			</c:forEach>
			
		
	</body>

</html>