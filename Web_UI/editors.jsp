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
		if(!$(":text[name=title]").val()) {
			$("#titleError").text("标题不能为空");
			bool = false;
		}

		if(!$(":text[name=date]").val()) {
			$("#dateError").text("时间不能为空");
			bool = false;
		}
		if(!$(":text[name=source]").val()) {
			$("#sourceError").text("来源不能为空");
			bool = false;
		}
		if(!$(":text[name=kind]").val()) {
			$("#kindError").text("类别不能为空");
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
                        <h1><a >健康妈妈运营管理平台</a></h1>
                    </div>
                </div>
            <%--    <form action="<c:url value='/CustomerServlet'/>" method="get">
	<input type="hidden" name="method" value="query"/>
                <div class="col-md-5">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="input-group form">
                           
                                <input type="text" name="title" class="form-control" placeholder="搜索...">
									  
                                <span class="input-group-btn">
                             	<%-- <input type="submit" value="搜索"/>
                             	   <button class="btn btn-primary" type="submit">搜索</button>
                             	
                           </span>
                            </div>
                            
                        </div>
                        </form>
                    </div>
                </div>
                --%>
                <!-- <div class="col-md-2">
                    <div class="navbar navbar-inverse" role="banner">
                        <nav class="collapse navbar-collapse bs-navbar-collapse navbar-right" role="navigation">
                            <ul class="nav navbar-nav">
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">管理人员<b class="caret"></b></a>
                                    <ul class="dropdown-menu animated fadeInUp">
                                        <li><a href="login.html">退出</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div> -->
            </div>
        </div>
    </div>
    <div class="page-content" style="padding-bottom:300px">
        <div class="row">
            <div class="col-md-2">
                <div class="sidebar content-box" style="display: block;">
                    <ul class="nav">
                        <!-- Main menu -->
                        <li class="current"><a href="editors.jsp"><i class="glyphicon glyphicon-pencil"></i>文章发布</a></li>
                        <li><a href="<c:url value='/CustomerServlet?method=findAll'/>"><i class="glyphicon glyphicon-list"></i>文章管理</a></li>
                          <li><a href="<c:url value='/CustomerServlet?method=findAllc'/>"><i class="glyphicon glyphicon-comment"></i> 反馈信息</a></li>
                        <li><a href="<c:url value='/CustomerServlet?method=findAlld'/>"><i class="glyphicon glyphicon-heart-empty"></i>医生管理</a></li>
                        <li><a href="topic.jsp"><i class="glyphicon glyphicon-tag"></i>话题贴士</a></li>
                        <li class="submenu">
                            <a href="#">
                                <i class="glyphicon glyphicon-user"></i>管理人员
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
            <div class="col-md-10" style="padding-bottom:170px">
                <div class="row">
                    <div class="col-md-12">
                        <div class="content-box-large">
                        <form action="<c:url value='/CustomerServlet'/>" method="post">
									<input type="hidden" name="method" value="add"/>
                            <div class="panel-heading">
                                <div class="panel-title">文章编辑</div>
                            </div>
                            <div class="panel-body">
                                <div id="rootwizard">
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="tab1">
                                            <form class="form-horizontal" role="form">
    <div class="form-group">
                                                    <label for="inputEmail3" class="col-sm-2 control-label">文章标题</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" name="title"  class="form-control" id="title" placeholder="文章标题">
          	                                            
												<label id="titleError" class="error">&nbsp;</label>
		
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                  <label for="inputPassword3" class="col-sm-2 control-label">时间</label>
                                              <div class="col-sm-10">
                                                    <input type="text" name="date"  class="form-control" id="date" placeholder="时间" >
                                                    <label id="dateError" class="error">&nbsp;</label>
                                             
                                                
                                                   
                                                </div>
                                                <div class="form-group">
                                                    <label for="inputPassword3" class="col-sm-2 control-label">来源</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" name="source"  class="form-control" id="source" placeholder="来源">
                                                        			<label id="sourceError" class="error">&nbsp;</label>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="inputPassword3" class="col-sm-2 control-label">类别</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" name="kind"   class="form-control" id="kind" placeholder="类别" >
                                                        			<label id="kindError" class="error">&nbsp;</label>
                                                    </div>
                                                </div>
                                                <%-- <div class="form-group">
                                                    <label class="col-sm-2 control-label">内容</label>
                                                     <div class="col-sm-10">
                                                        <input type="text" name="article"   class="form-control" id="article" placeholder="内容">
                                                        			<label id="articleError" class="error">&nbsp;</label>
                                                    </div>
                                                </div>
                                                 --%>
                                                       <div class="form-group">
                                                    <label class="col-sm-2 control-label">内容</label>
                                                    <div class="col-sm-10">
                                                        <textarea class="form-control" name="article"  placeholder="文章内容" rows="8"></textarea>
                                                        	<label id="articleError" class="error">&nbsp;</label>
                                                    </div>
                                                </div>
                                                <div class="panel-body">
                                                    <p>
          			                                   	<input type="button" value="发布文章" onclick="add()"/>
														<input type="reset" value="重置所有"/>
                                                    </p>
                                                 
                                                </div>
                                                  
                                            </form>
                                            
                                        </div>
                                 
                                    </div>
                                       
                                </div>
                                   
                            </div>
                        </form>
                        </div>
                             
                    </div>
                    
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
    <link rel="stylesheet" type="text/css" href="vendors/bootstrap-wysihtml5/src/bootstrap-wysihtml5.css"></link>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://code.jquery.com/jquery.js"></script>
    <!-- jQuery UI -->
    <script src="https://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="vendors/bootstrap-wysihtml5/lib/js/wysihtml5-0.3.0.js"></script>
    <script src="vendors/bootstrap-wysihtml5/src/bootstrap-wysihtml5.js"></script>
    <script src="vendors/ckeditor/ckeditor.js"></script>
    <script src="vendors/ckeditor/adapters/jquery.js"></script>
    <script type="text/javascript" src="vendors/tinymce/js/tinymce/tinymce.min.js"></script>
    <script src="js/custom.js"></script>
    <script src="js/editors.js"></script>
    <!-- bootstrap-datetimepicker -->
    <link href="vendors/bootstrap-datetimepicker/datetimepicker.css" rel="stylesheet">
    <script src="vendors/bootstrap-datetimepicker/bootstrap-datetimepicker.js"></script>
    <script src="vendors/form-helpers/js/bootstrap-formhelpers.min.js"></script><!--影响日期时间编辑框-->
    </form>
</body>

</html>
