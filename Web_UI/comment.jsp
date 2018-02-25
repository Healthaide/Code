<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <title>健康校园运营管理平台</title>
    <meta http-equiv="Content-Type" content="text/html" ; charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- jQuery UI -->
    <link href="https://code.jquery.com/ui/1.10.3/themes/redmond/jquery-ui.css" rel="stylesheet" media="screen">
    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- styles -->
    <link href="css/styles.css" rel="stylesheet">
    <!-- <link href="res/bootstrap.min.css" rel="stylesheet" type="text/css" /> -->
    <script src="res/jquery-1.7.2.min.js" type="text/javascript"></script>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>

<body>
    <div class="header" >
        <div class="container">
            <div class="row">
                <div class="col-md-5">
                    <!-- Logo -->
                    <div class="logo">
                        <h1><a>健康校园运营管理平台</a></h1>
                    </div>
                </div>
                             <form action="<c:url value='/CustomerServlet'/>" method="get">
	<input type="hidden" name="method" value="query1"/>
                <div class="col-md-5">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="input-group form">
                           
                                <input type="text" name="aid" class="form-control" placeholder="搜索反馈...">
									  
                                <span class="input-group-btn">
                             	<%-- <input type="submit" value="搜索"/>--%>
                             	   <button class="btn btn-primary" type="submit">搜索</button>
                             	
                           </span>
                        
                            </div>
                           
                        </div>
                        
                    </div>
                    
                </div>
                   </form>
            </div>
        </div>
    </div>
    <div class="page-content" style="padding-bottom:300px">
        <div class="row">
            <div class="col-md-2" >
                <div class="sidebar content-box" style="display: block;">
                    <ul class="nav">
                        <!-- Main menu -->
                        <li><a href="editors.jsp"><i class="glyphicon glyphicon-pencil"></i> 文章发布</a></li>
                        <li><a href="<c:url value='/CustomerServlet?method=findAll'/>"><i class="glyphicon glyphicon-list"></i> 文章管理</a></li>
                        <li class="current"><a href="<c:url value='/CustomerServlet?method=findAllc'/>"><i class="glyphicon glyphicon-comment"></i> 反馈信息</a></li>
                        <li><a href="<c:url value='/CustomerServlet?method=findAlld'/>"><i class="glyphicon glyphicon-heart-empty"></i>医生管理</a></li>
                        <li><a href="topic.jsp"><i class="glyphicon glyphicon-tag"></i>话题贴士</a></li>
                        <li class="submenu">
                            <a href="#">
                                <i class="glyphicon glyphicon-user"></i> 管理人员
                                <span class="caret pull-right"></span>
                            </a>
                            <!-- Sub menu -->
                            <ul>
                                <li><a href="<c:url value='/CustomerServlet?method=quit'/>">注销</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-md-10">
                <div class="content-box-large">
                    <div class="panel-heading">
                        <div class="panel-title">用户反馈</div>
                    </div>
                    <form id="form1" runat="server">
                        <div class="panel-body">
                            <table class="table table-hover" style="table-layout:fixed ;">
                                <thead>
                                    <tr>
                                        <th>用户</th>
                                        <th>时间</th>
                                        <th>反馈内容</th>
                                    </tr>
                                </thead>
                                <tbody>
                                   <c:forEach items="${pb.beanList}" var="cstm">
                                   <tr>
		<td>${cstm.aid }</td>
		<td>${cstm.shijian }</td>
		<td>${cstm.neirong }</td>
		</tr>
	</c:forEach>
                                </tbody>
                            </table>
                        </div>
                         第${pb.pc }页/共${pb.tp}页
         <a href="<c:url value='/CustomerServlet?method=findAllc&pc=1'/>">首页</a>
         <c:if test="${pb.pc>1}">
           <a href="<c:url value='/CustomerServlet?method=findAllc&pc=${pb.pc-1}'/>">上一页</a>
           </c:if>
           <%-- 计算begin 和 and --%>
           <c:choose>
           <%-- 如果总页数不足十页  那么把所有的页数都显示出来 --%>
       <c:when test="${pb.tp<=10 }">
           <c:set var="begin" value="1"/>
           <c:set var="end" value="${pb.tp }"/>
           </c:when>
           <c:otherwise>
           <%-- 当总页数大于10时 通过公式计算出begin和end --%>
           <c:set var="begin" value="${pb.pc-5 }"/>
           <c:set var="end" value="${pb.pc+4 }"/>
           <%--头溢出 --%>
           
           
           <c:if test="${begin<1 }"> 
             <c:set var="begin" value="1"/>
              <c:set var="end" value="10"/>
             </c:if>
             <%-- 尾溢出 --%>
               <c:if test="${end>pb.tp }"> 
                   <c:set var="begin" value="${pb.tp-9 }"/>
             <c:set var="end" value="${pb.tp }"/>
           </c:if>
           
           
           
           
           </c:otherwise>
           </c:choose>
           <%-- 循环遍历页码列表 --%>
           <c:forEach var="i" begin="${begin }" end="${end }">
           <c:choose>
           <c:when test="${i eq pb.pc }">
           ${i }
           </c:when>
           <c:otherwise>
         <a href="<c:url value='/CustomerServlet?method=findAllc&pc=${i }'/>"  >[${i }]</a>
           
           </c:otherwise> 
           </c:choose>
           </c:forEach>
           
            <c:if test="${pb.pc<pb.tp }">
              <a href="<c:url value='/CustomerServlet?method=findAllc&pc=${pb.pc+1}'/>">下一页</a>
              </c:if>
                <a href="<c:url value='/CustomerServlet?method=findAllc&pc=${pb.tp}'/>">尾页</a>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <footer>
        <div class="container">
            <div class="copy text-center">
                Copyright 2016 <a href='#'>大学</a>
            </div>
        </div>
    </footer>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <!-- <script src="https://code.jquery.com/jquery.js"></script> -->
    <!-- jQuery UI -->
    <script src="https://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="js/custom.js"></script>
    <!-- <script src="js/tables.js"></script> -->
</body>

</html>
