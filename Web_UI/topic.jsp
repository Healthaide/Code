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
    <link href="vendors/form-helpers/css/bootstrap-formhelpers.min.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
    html,
    body {
        height: 100%;
        margin: 0;
        padding: 0;
    }
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
                <div class="col-md-5">
                    <div class="row">
                        <div class="col-lg-12">
                        </div>
                    </div>
                </div>
                <div class="col-md-2">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="page-content" style="min-height: 100%; height: auto !important; height: 100%;padding-bottom:300px">
        <div class="row" style="padding-bottom: 65px;">
            <div class="col-md-2">
                <div class="sidebar content-box" style="display: block;">
                    <ul class="nav">
                        <li><a href="editors.jsp"><i class="glyphicon glyphicon-pencil"></i> 文章发布</a></li>
                        <li class="current"><a href="<c:url value='/CustomerServlet?method=findAll'/>"><i class="glyphicon glyphicon-heart-empty"></i>文章管理</a></li>
                        <li><a href="<c:url value='/CustomerServlet?method=findAllc'/>"><i class="glyphicon glyphicon-comment"></i> 反馈信息</a></li>
                        <li><a href="<c:url value='/CustomerServlet?method=findAlld'/>"><i class="glyphicon glyphicon-heart-empty"></i>医生管理</a></li>
                        <li class="current"><a href="topic.jsp"><i class="glyphicon glyphicon-tag"></i>话题贴士</a></li>
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
            <div class="col-md-10">
                <div class="row">
                    <div class="col-md-12">
                        <div class="content-box-large">
                           <form action="<c:url value='/CustomerServlet'/>" method="post">
									<input type="hidden" name="method" value="addt"/>
                            <div class="panel-heading">
                                <div class="panel-title">话题发布</div>
                            </div>
                            
                            <div class="panel-body">
                                <div id="rootwizard">
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="tab1">
                                            <form class="form-horizontal" role="form">
                                                <div class="form-group">
                                                    <label for="inputEmail3" class="col-sm-2 control-label">话题</label>
                                                    <div class="col-sm-4">
                                                        <input type="text" class="form-control" name="topicname" id="topicname" placeholder="话题">
                                                    </div>
                                                    <label for="inputPassword3" class="col-sm-2 control-label">时间</label>
                                                    <div class="col-sm-4">
                                                        <input type="text" class="form-control"name="topictime" id="topictime" placeholder="时间">
                                                    </div>
                                                </div>
                                                <!-- <div class="panel-body">
                                                    <textarea id="ckeditor_full"></textarea>
                                                </div> -->
                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label">话题详情</label>
                                                    <div class="col-sm-10">
                                                        <textarea class="form-control" name="topicarticle"placeholder="话题详情" rows="8"></textarea>
                                                    </div>
                                                </div>
                                                <div class="panel-body">
                                                    <p>
                                                            	<input type="button" value="发布文章"/>
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
                <div class="row">
                    <div class="col-md-12">
                        <div class="content-box-large">
                        	 <form action="<c:url value='/CustomerServlet'/>" method="post">
									<input type="hidden" name="method" value="addm"/>
                            <div class="panel-heading">
                                <div class="panel-title">信息推送</div>
                            </div>
                            <div class="panel-body">
                                <div id="rootwizard">
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="tab1">
                                            <form class="form-horizontal" role="form">
                                                <div class="form-group">
                                                    <label for="inputEmail3" class="col-sm-2 control-label">地区</label>
                                                    <div class="col-sm-4">
                                                        <input type="text" class="form-control" name="messagearea" id="inputEmail3" placeholder="地区">
                                                    </div>
                                                    <label for="inputPassword3" class="col-sm-2 control-label">时间</label>
                                                    <div class="col-sm-4">
                                                        <input type="text" class="form-control" name="messagetime" id="inputEmail3" placeholder="时间">
                                                    </div>
                                                </div>
                                                <!-- <div class="panel-body">
                                                    <textarea id="ckeditor_full"></textarea>
                                                </div> -->
                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label">信息详情</label>
                                                    <div class="col-sm-10">
                                                        <textarea class="form-control" name="messagearticle" placeholder="信息详情" rows="8"></textarea>
                                                    </div>
                                                </div>
                                                <div class="panel-body">
                                                    <p>
                                                        	<input type="button" value="推送信息"/>
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
    <footer style="position: relative; margin-top: -65px; clear:both;">
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
    <script src="vendors/form-helpers/js/bootstrap-formhelpers.min.js"></script>
</body>

</html>
