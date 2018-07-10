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
    <title>首页</title>

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
<s:action name="allNews" namespace="/"></s:action>
<s:action name="findByid_index" namespace="/"></s:action>

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

<div class="admin">

        <div class="panel admin-panel">
            <div class="panel-head"><strong>文章列表</strong></div>
       
           
            <table class="table table-hover">
                <tr>
                   <!--  <th width="45">选择</th> -->
                    <th width="300">标题</th>
                    <th width="100">时间</th>
                    <th width="100">类别</th>
                    <th width="100">文档详情</th> 
                     <th width="150">作者</th>
                     
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
               		<a href="findByid_index.action?nid=${item.nid }" ><img src="images/edit.png" alt="" title="" border="0"
                                  name="${item.nid }"    /></a>
               </td>
                    </tr>
              </c:forEach>

            </table>
 
        </div>
		
        <br>
		<c:choose>
       				<c:when test="${empty NewsByid_index}">
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
       			<c:forEach items="${NewsByid_index }" var="item">
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

  
</div>
	
			

</body>

</html>