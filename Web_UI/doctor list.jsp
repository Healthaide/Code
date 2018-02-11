<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
    <title>健康校园运营管理平台</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- jQuery UI -->
    <link href="https://code.jquery.com/ui/1.10.3/themes/redmond/jquery-ui.css" rel="stylesheet" media="screen">
    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- styles -->
    <link href="css/styles.css" rel="stylesheet">
    <link href="vendors/form-helpers/css/bootstrap-formhelpers.min.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" type="text/css" href="<c:url value='/jquery/jquery.datepick.css'/>">
	<script type="text/javascript" src="<c:url value='/jquery/jquery-1.5.1.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/jquery/jquery.datepick.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/jquery/jquery.datepick-zh-CN.js'/>"></script>
	<script type="text/javascript">
	$(function() {
		$("#date").datepick({dateFormat:"yy-mm-dd"});
	});
	function add() {
		$(".error").text("");
		var bool = true;
		if(!$(":text[name=name]").val()) {
			$("#NameError").text("姓名不能为空");
			bool = false;
		}

		if(!$(":text[name=hospital]").val()) {
			$("#hospitalError").text("医院不能为空");
			bool = false;
		}
		if(!$(":text[name=department]").val()) {
			$("#departmentError").text("部门不能为空");
			bool = false;
		}
		if(!$(":text[name=position]").val()) {
			$("#positionError").text("职称不能为空");
			bool = false;
		}
		if(!$(":text[name=phone]").val()) {
			$("#phoneError").text("电话不能为空");
			bool = false;
		}
		if(!$(":text[name=password]").val()) {
			$("#passwordError").text("密码不能为空");
			bool = false;
		}
		if(bool) {
			$("form").submit();
		}
	}
	
</script>
<style type="text/css">
	.error {color:red;}
</style>
</head>

<body>
    <div class="header">
        <div class="container">
            <div class="row">
                <div class="col-md-5">
                    <!-- Logo -->
                    <div class="logo">
                        <h1><a href="index.html">健康妈妈运营管理平台</a></h1>
                    </div>
                </div>
                 <form action="<c:url value='/CustomerServlet'/>" method="get">
	              <input type="hidden" name="method" value="query2"/>
                <div class="col-md-5">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="input-group form">
                           
                                <input type="text" name="name" class="form-control" placeholder="搜索医生...">
									  
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
            <div class="col-md-2">
                <div class="sidebar content-box" style="display: block;">
                    <ul class="nav">
                        <!-- Main menu -->
                       <li><a href="editors.jsp"><i class="glyphicon glyphicon-pencil"></i>文章发布</a></li>
                        <li><a href="<c:url value='/CustomerServlet?method=findAll'/>"><i class="glyphicon glyphicon-list"></i>文章管理</a></li>
                          <li><a href="<c:url value='/CustomerServlet?method=findAllc'/>"><i class="glyphicon glyphicon-comment"></i> 反馈信息</a></li>
                        <li class="current"><a href="<c:url value='/CustomerServlet?method=findAlld'/>"><i class="glyphicon glyphicon-heart-empty"></i>医生管理</a></li>
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
                <div class="row">
                    <div class="col-md-12">
                        <div class="content-box-large">
                          <form action="/realadd/CustomerServlet?method=addd" method="post">
                            <div class="panel-heading">
                                <div class="panel-title">医生添加</div>
                                <!-- <div class="panel-options">
                                    <a href="#" data-rel="collapse"><i class="glyphicon glyphicon-refresh"></i></a>
                                    <a href="#" data-rel="reload"><i class="glyphicon glyphicon-cog"></i></a>
                                </div> -->
                            </div>
                            <div class="panel-body">
                                <form class="form-horizontal" role="form" enctype="multipart/form-data">
                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-sm-1 control-label">姓名</label>
                                        <div class="col-sm-3">
                                            <input type="text" name="name"  class="form-control" id="inputEmail3" placeholder="姓名">
                                        </div>
                                          <label for="inputEmail3" class="col-sm-1 control-label">医院</label>
                                        <div class="col-sm-3">
                                            <input type="text" name="hospital" class="form-control" id="inputEmail3" placeholder="医院">
                                        </div>
                                          <label for="inputEmail3" class="col-sm-1 control-label">部门</label>
                                        <div class="col-sm-3">
                                        <input type="text" name="department" class="form-control" id="inputEmail3" placeholder="部门">
                                        </div>
                                         </div>
                                  		  <div class="form-group">
                                  		     <label for="inputEmail3" class="col-sm-1 control-label">职称</label>
                                        <div class="col-sm-3">
                                         <input type="text" name="position" class="form-control" id="inputEmail3" placeholder="职称">
                                        </div>
                                        <label for="inputEmail3" class="col-sm-1 control-label">手机号</label>
                                        <div class="col-sm-3">
                                           <input type="text" name="phone"class="form-control" id="inputEmail3" placeholder="手机号">
                                        </div>
                                        <label for="inputEmail3" class="col-sm-1 control-label">初始密码</label>
                                        <div class="col-sm-3">
                                             <input type="text" name="password" class="form-control" id="inputEmail3" placeholder="初始密码">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sd-offset-1 col-sm-10">
                                         <p>
          			                                   	<input type="submit" value="添加医生" onclick="add()" />
                                                    </p>
                                        </div>
                                    </div>
                                </form>
                            </div>
                             </form>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="content-box-large">
                            <div class="panel-heading">
                                <div class="panel-title">医生列表</div>
                            </div>
                            <form id="form1" runat="server">
                                <div class="panel-body">
                                    <table class="table table-hover">
                                        <thead>
                                            <tr>
                                                <th>姓名</th>
                                                <th>医院</th>
                                                <th>部门</th>
                                                <th>职称</th>
                                                <th>手机号</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${pb.beanList}" var="cstm">
												<tr>
													<td>${cstm.name}</td>
													<td>${cstm.hospital}</td>
													<td>${cstm.department}</td>
													<td>${cstm.position}</td>
													<td>${cstm.phone}</td>
												</tr>
												</c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                   第${pb.pc }页/共${pb.tp}页
         <a href="<c:url value='/CustomerServlet?method=findAlld&pc=1'/>">首页</a>
         <c:if test="${pb.pc>1}">
           <a href="<c:url value='/CustomerServlet?method=findAlld&pc=${pb.pc-1}'/>">上一页</a>
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
         <a href="<c:url value='/CustomerServlet?method=findAlld&pc=${i }'/>"  >[${i }]</a>
           
           </c:otherwise> 
           </c:choose>
           </c:forEach>
           
            <c:if test="${pb.pc<pb.tp }">
              <a href="<c:url value='/CustomerServlet?method=findAlld&pc=${pb.pc+1}'/>">下一页</a>
              </c:if>
                <a href="<c:url value='/CustomerServlet?method=findAlld&pc=${pb.tp}'/>">尾页</a>
                            <%--    <div>
                                    <ul class="pagination" id="pagination">
                                    </ul>
                                    <input type="hidden" id="PageCount" runat="server" />
                                    <!--总的数据量-->
                                    <input type="hidden" id="PageSize" value="8" runat="server" />
                                    <!--每一页有多少组数据-->
                                    <input type="hidden" id="countindex" value="10" runat="server" />
                                    <!--计算总共有多少页-->
                                    <!--设置最多显示的页码数 可以手动设置 默认为7-->
                                    <input type="hidden" id="visiblePages" value="5" runat="server" />
                                </div>--%> 
                                <script src="res/myPage.js" type="text/javascript"></script>
                            </form>
                        </div>
                    </div>
                </div>
                <!--  Page content -->
            </div>
        </div>
    </div>
    <footer>
        <div class="container">
            <div class="copy text-center">
                Copyright 2014 <a href='#'>大学</a>
            </div>
        </div>
    </footer>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <!-- <script src="https://code.jquery.com/jquery.js"></script> -->
    <!-- jQuery UI -->
    <script src="https://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <!-- bootstrap-datetimepicker -->
    <script src="js/custom.js"></script>
</body>

</html>
