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
	function add() {
		$(".error").text("");
		var bool = true;
		if(!$(":text[name=name]").val()) {
			$("#nameError").text("医生姓名不能为空");
			bool = false;
		}
		if(!$(":text[name=hospital]").val()) {
			$("#hospitalError").text("所属医院不能为空");
			bool = false;
		}
		if(!$(":text[name=department]").val()) {
			$("#departmentError").text("部门不能为空");
			bool = false;
		}
		if(!$(":text[name=position]").val()) {
			$("#positionError").text("职位不能为空");
			bool = false;
		}
		if(!$(":text[name=phone]").val()) {
			$("#phoneError").text("手机不能为空");
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
                        <h1><a href="index.html">健康校园运营管理平台</a></h1>
                    </div>
                </div>
                 <form action="<c:url value='/CustomerServlet'/>" method="get">
	<input type="hidden" name="method" value="query"/>
                <div class="col-md-5">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="input-group form">
                           
                                <input type="text" name="title" class="form-control" placeholder="搜索...">
									  
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
                                <li><a href="">修改密码</a></li>
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
                                <div class="panel-title">医生权限添加</div>
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
          			                                   <h3 style="color:black;" align="center">${msg }</h3>
                                                    </p>
                                        </div>
                                    </div>
                                </form>
                            </div>
                             </form>
                        </div>
                    </div>
                </div>
  
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
