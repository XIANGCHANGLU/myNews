<%@ page import="java.util.ArrayList" %>
<%@ page import="com.ssh.action.NewsAction" %> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <meta name="renderer" content="webkit">
    <title>用户空间</title>

    <link rel="stylesheet" href="http://www.pintuer.com/css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="http://www.pintuer.com/js/jquery.js"></script>
    <script src="http://www.pintuer.com/js/pintuer.js"></script>
	
    <script type=text/javascript src=js/query.js></script>
    <script type="text/javascript" src="js/updateNews.js"></script>
    <script src="js/admin.js"></script>
    <link type="image/x-icon" href="http://www.pintuer.com/favicon.ico" rel="shortcut icon"/>
    <link href="http://www.pintuer.com/favicon.ico" rel="bookmark icon"/>
   
    
    
</head>




<body>
<s:action name="findByUserid" namespace="/"></s:action>
<s:action name="listCategory" namespace="/"></s:action> 

<div class="lefter">
    <div class="logo">
        <a href="http://www.pintuer.com" target="_blank"><img src="images/logo.png" alt="后台管理系统"/></a>
    </div>
</div>
<div class="righter nav-navicon" id="admin-nav">
    <div class="mainer">
        <div class="admin-navbar">
					<span class="float-right">
                    <a class="button button-little bg-main" href="login_user.jsp">回到首页</a>
                    <a class="button button-little bg-yellow" href="user_logout.action">注销登录</a>
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

                <li><a href="content.html"> </a></li>
            </ul>
        </div>
    </div>
</div>

<div class="admin">

        <div class="panel admin-panel">
            <div class="panel-head"><strong>我的文章列表</strong></div>
       
           
            <table class="table table-hover">
                <tr>
                   <!--  <th width="45">选择</th> -->
                    <th width="300">标题</th>
                    <th width="100">时间</th>
                    <th width="100">类别</th>
                   <!--  <th width="150">操作</th> -->
                </tr>
            
              <c:forEach items="${list_news_byuid}" var="item">
               	<tr>
               <td>${item.head }
                    </td>
               <td>${item.publish_time }
                    </td> 
               <td>${item.category.categoryname }
                    </td> 
                    </tr>
              </c:forEach>

            </table>
 
        </div>
		
        <br>
        <br>


    <div class="panel admin-panel">
        <div class="panel-head"><strong>新闻类型列表</strong></div>
        <table class="table table-hover">
            <tr>
                <th width="300">类型名</th>
                <th width="100">更新</th>
                <th width="100">删除</th>
            </tr>
			 <c:forEach items="${listcategory}" var="item">
               	<tr>
               <td>${item.categoryname }
                    </td>
               <td>
               		<a href="findCategoryid.action?cid=${item.cid }" ><img src="images/edit.png" alt="" title="" border="0"
                                      /></a>
               </td>
                <td>
                	<a href="deleteCategory.action?cid=${item.cid }"><img src="images/trash.gif" alt="" title="" border="0"
                                             /></a>
                </td>
                    </tr>
              </c:forEach>
        </table>
    

    </div>

    <br>
    <br>
 <div class="panel admin-panel">
            <div class="panel-head"><strong>文档详情/文档修改</strong></div>
            <div class="tab">

                <div class="tab-body">
                    <br/>
                    <div class="tab-panel active" id="tab-set">							
							<form action="updateCategory" method="post">
                            <div class="form-group">
                                 <div class="field">
                                    <label>类型编号</label> <!-- <input type="text" class="input" id="check_id" size="50"
                                                           name="cid"    value="" readonly/> -->
                                       <select  id="check_type" style="width:100%;height: 100%;" name="cid">
				                               <c:forEach items="${listcategory}" var="item">
				                               		<option value="${item.cid }">${item.cid }</option>
				                               </c:forEach>
				                           </select>
                                </div> 
                                <br>
                                <div class="field">
                                    <label>类型名</label> <input type="text" class="input" id="check_head" size="50"
                                    		name="categoryname"                           value=""/>
                                </div>
                            </div>                       
                            <div class="form-button" align="center">
                                <button class="button bg-main" >提交修改</button>
                            </div>
						</form>
                    </div>

                </div>
            </div>

			
        </div>

    <br/>
	

       
   
</div>


</body>

</html>