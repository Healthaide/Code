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
        <link rel="stylesheet" href="assets/css/amazeui.min.css" />
        <link rel="stylesheet" href="css/admin.css">
        <link rel="stylesheet" href="css/app.css">
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
                if (!$(":text[name=name]").val()) {
                    $("#NameError").text("姓名不能为空");
                    bool = false;
                }

                if (!$(":text[name=hospital]").val()) {
                    $("#hospitalError").text("医院不能为空");
                    bool = false;
                }
                if (!$(":text[name=department]").val()) {
                    $("#departmentError").text("部门不能为空");
                    bool = false;
                }
                if (!$(":text[name=position]").val()) {
                    $("#positionError").text("职称不能为空");
                    bool = false;
                }
                if (!$(":text[name=phone]").val()) {
                    $("#phoneError").text("电话不能为空");
                    bool = false;
                }
                if (!$(":text[name=password]").val()) {
                    $("#passwordError").text("密码不能为空");
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

            <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>
        </header>

        <div class="tpl-page-container tpl-page-header-fixed">
            <div class="tpl-left-nav tpl-left-nav-hover">
                <div class="tpl-left-nav-title">
                    Administration List
                </div>
                <div class="tpl-left-nav-item">
                    <a href="editors.jsp" class="nav-link tpl-left-nav-link-list">
                        <i class="am-icon-pencil-square-o"></i>
                        <span>Article Publish</span>
                    </a>
                    </li>

                    <li class="tpl-left-nav-item">
                        <a href="article_tables.jsp" class="nav-link tpl-left-nav-link-list">
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

                    <li class="tpl-left-nav-list">
                        <ul class="tpl-left-nav-menu">
                            <a href="#" class="nav-link active">
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
                </div>
            </div>

            <div class="tpl-content-wrapper">     
                <div class="tpl-content-page-title">
                    Doctor Management
                </div>
                <ol class="am-breadcrumb">
                    <li><a href="editors.jsp" class="am-icon-home">Home</a></li>
                    <li><a href="#" class="am-icon-list">Doctor List</a></li>
                </ol>
                <div class="tpl-portlet-components">
                    <div class="portlet-title">

                        <form action="<c:url value='/CustomerServlet'/>" method="get">
                            <input type="hidden" name="method" value="query"/>
                        <div class="col-md-5">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="input-group form">

                                        <input  style="width:220px;height:33px"type="text" name="title" class="form-control" placeholder="Search Doctors...">

                                        <span class="input-group-btn">
                                            <%-- <input type="submit" value="搜索"/>--%>
                                            <button style="margin-right:190px;" class="btn btn-primary" type="submit">Search</button>

                                        </span>

                                    </div>
                        
                                </div>

                            </div>

                        </div>
                    </form>
                    </div>
                            <br>
                    <div class="row">      

                        <form id="form1" runat="server">
                            <div class="panel-body">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>Name</th>
                                            <th>Hospital</th>
                                            <th>Department</th>
                                            <th>Position</th>
                                            <th>Phone Number</th>
                                            <th class="table-set">Operation</th>                                               
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
                                                <td>
                                                    <a href="<c:url value='/CustomerServlet?method=delete&cid=${cstm.cid }'/>">Delete</a>

                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            The page ${pb.pc } of ${pb.tp } pages
                            <a href="<c:url value='/CustomerServlet?method=findAlld&pc=1'/>">Begin</a>
                            <c:if test="${pb.pc>1}">
                                <a href="<c:url value='/CustomerServlet?method=findAlld&pc=${pb.pc-1}'/>">Before</a>
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
                                <a href="<c:url value='/CustomerServlet?method=findAlld&pc=${pb.pc+1}'/>">Next</a>
                            </c:if>
                            <a href="<c:url value='/CustomerServlet?method=findAlld&pc=${pb.tp}'/>">End</a>
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
                    <div class="form-group">
                        <div class="col-sd-offset-1 col-sm-10">
                            <input style="margin-top: 18px" type="button" value="Add Doctor" class="am-btn am-btn-primary" onclick="window.location.href('doctor4.jsp')">

                        </div>
                    </div>

                </div>
                <!--  Page content -->
            </div>
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
<script src="js/jquery.min.js"></script>
<script src="js/amazeui.min.js"></script>
<script src="js/app.js"></script>
</body>

</html>

