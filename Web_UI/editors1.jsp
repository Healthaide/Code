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
        <link rel="stylesheet" href="assets/css/amazeui.min.css" />
        <link rel="stylesheet" href="css/admin.css">
        <link rel="stylesheet" href="css/app.css">
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
            $(function () {
                $("#date").datepick({dateFormat: "yy-mm-dd"});
            });
            function add() {
                $(".error").text("");
                var bool = true;
                if (!$(":text[name=title]").val()) {
                    $("#titleError").text("标题不能为空");
                    bool = false;
                }
                if (!$(":text[name=source]").val()) {
                    $("#sourceError").text("来源不能为空");
                    bool = false;
                }
                if (!$(":text[name=kind]").val()) {
                    $("#kindError").text("类别不能为空");
                    bool = false;
                }
                if (bool) {
                    $("form").submit();
                }
            }

        </script>
        <style type="text/css">
            .error {color:red;}
        </style>
    </head>

    <body>
        <header class="am-topbar am-topbar-inverse admin-header">
            <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>

                <span class="tpl-header-list-user-nick"><h1>Administration Center</h1></span>

            </li>

        </header>
        <div class="tpl-page-container tpl-page-header-fixed">
            <div class="tpl-left-nav tpl-left-nav-hover">
                <div class="tpl-left-nav-title">
                    Administration List
                </div>
                <div class="tpl-left-nav-list">
                    <ul class="tpl-left-nav-menu">

                        <li class="tpl-left-nav-item">
                            <a href="editors.jsp" class="nav-link tpl-left-nav-link-list">
                                <i class="am-icon-pencil-square-o"></i>
                                <span>Article Publish</span>
                            </a>
                        </li>

                        <li class="tpl-left-nav-item">
                            <a href="article_tables.jsp" class="nav-link active">
                                <i class="am-icon-list"></i>
                                <span>Article Management</span>
                            </a>
                        </li>

                        <li class="tpl-left-nav-item">
                            <a href="comment.jsp" class="nav-link tpl-left-nav-link-list">
                                <i class="am-icon-comments-o"></i>
                                <span>Feedback</span>
                            </a>
                        </li>

                        <li class="tpl-left-nav-item">
                            <a href="doctor1.jsp" class="nav-link tpl-left-nav-link-list">
                                <i class="am-icon-user-md"></i>
                                <span>Doctor Management</span>
                            </a>

                        </li>

                        <li class="tpl-left-nav-item">
                            <a href="topic.jsp" class="nav-link tpl-left-nav-link-list">
                                <i class="am-icon-wpforms"></i>
                                <span>Tip & Topic</span>
                            </a>

                        </li>

                        <li class="tpl-left-nav-item">
                            <a href="manager.jsp" class="nav-link tpl-left-nav-link-list">
                                <i class="am-icon-user"></i>
                                <span>Manager Management</span>
                            </a>

                        </li>                   

                        <li class="tpl-left-nav-item">
                            <a href="javascript:;" class="nav-link tpl-left-nav-link-list">
                                <i class="am-icon-cog"></i>
                                <span>Set</span>
                                <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
                            </a>
                            <ul class="tpl-left-nav-sub-menu">
                                <li>
                                    <a href="set.jsp">
                                        <i class="am-icon-angle-right"></i>
                                        <span>Modify password</span>
                                    </a>
                                    <a href="login.jsp">
                                        <i class="am-icon-sign-out"></i>
                                        <span>Log out</span>
                                    </a>                                    
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="tpl-content-wrapper">
                <div class="tpl-content-page-title">
                    Article Management
                </div>
                <ol class="am-breadcrumb">
                    <li><a href="editors.jsp" class="am-icon-home">Home</a></li>
                    <li><a href="article_tables.jsp" class="am-icon-list" >Article List</a></li>
                    <li><a href="#" class="am-icon-search" >Article Search</a></li>
                </ol>
                <div class="tpl-portlet-components">
                    <div class="portlet-title">
                        <div class="caption font-green bold">
                            <span></span> Article details
                        </div>
                    </div>


                    <div class="col-md-10">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="content-box-large">

                                    <form action="<c:url value='/CustomerServlet'/>" method="post">
                                        <input type="hidden" name="method" value="edit"/>
                                        <input type="hidden" name="cid" value="${cstm.cid}"/>

                                        <div class="panel-body">
                                            <div id="rootwizard">
                                                <div class="tab-content">
                                                    <div class="tab-pane active" id="tab1">
                                                        <form class="form-horizontal" role="form">
                                                            <div class="form-group">
                                                                <label for="inputEmail3" class="col-sm-2 control-label">Article Title</label>
                                                                <div class="col-sm-10">
                                                                    <input type="text" name="title"  class="form-control" placeholder="Article Title"value="${cstm.title }">

                                                                    <label id="titleError" class="error">&nbsp;</label>

                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="inputPassword3" class="col-sm-2 control-label">Time</label>
                                                                <div class="col-sm-10">
                                                                    <input type="text" name="date"  class="form-control" id="date" placeholder="Time" value= "${cstm.date }">
                                                                    <label id="dateError" class="error">&nbsp;</label>

                                                                </div>

                                                            </div>
                                                            <div class="form-group">
                                                                <label for="inputPassword3" class="col-sm-2 control-label">Source</label>
                                                                <div class="col-sm-10">
                                                                    <input type="text" name="source"  class="form-control" id="source" placeholder="Source"value="${ cstm.source}">
                                                                    <label id="sourceError" class="error">&nbsp;</label>
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="inputPassword3" class="col-sm-2 control-label">Classification</label>
                                                                <div class="col-sm-10">
                                                                    <input type="text" name="kind"   class="form-control" id="kind" placeholder="Clssification" value="${cstm.kind }">
                                                                    <label id="kindError" class="error">&nbsp;</label>
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="col-sm-2 control-label">Content</label>
                                                                <div class="col-sm-10">
                                                                    <textarea class="form-control" name="article" placeholder="Content"rows="8" >${cstm.article}</textarea>
                                                                </div>
                                                            </div>
                                                            <%-- <div class="form-group">
                                                                     <label class="col-sm-2 control-label">内容</label>
                                                                      <div class="col-sm-10">
                                                                         <input type="text" name="article"   class="form-control" id="article" placeholder="内容"  value="${cstm.article }">
                                                                                                 <label id="articleError" class="error">&nbsp;</label>
                                                                     </div>
                                                                 </div>
                                                                 
                                                            --%>
                                                            <%--  <p>
                                                                                 <input type="button" value="编辑文章" onclick="add()"/>
                                                                                                                         <input type="reset" value="重置所有"/>
                                                             </p>
                                                            --%>
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
    <script src="js/jquery.min.js"></script>
    <script src="js/amazeui.min.js"></script>
    <script src="js/app.js"></script>
    <!-- bootstrap-datetimepicker -->
    <link href="vendors/bootstrap-datetimepicker/datetimepicker.css" rel="stylesheet">
    <script src="vendors/bootstrap-datetimepicker/bootstrap-datetimepicker.js"></script>
    <script src="vendors/form-helpers/js/bootstrap-formhelpers.min.js"></script><!--影响日期时间编辑框-->
</form>
</body>

</html>
