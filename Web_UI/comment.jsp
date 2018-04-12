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
        <link rel="stylesheet" href="assets/css/amazeui.min.css">
        <link rel="stylesheet" href="css/admin.css">
        <link rel="stylesheet" href="css/app.css">
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
                            <a href="article_tables.jsp" class="nav-link tpl-left-nav-link-list">
                                <i class="am-icon-list"></i>
                                <span>Article Management</span>
                            </a>
                        </li>

                        <li class="tpl-left-nav-item">
                            <a href="#" class="nav-link active">
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
                </div>
            </div>
            <div class="tpl-content-wrapper">
                <div class="tpl-content-page-title">
                    Feedback Search
                </div>
                <ol class="am-breadcrumb">
                    <li><a href="editors.jsp" class="am-icon-home">Home</a></li>
                    <li><a href="#" class="am-icon-list" >Feedback List</a></li>
                </ol>
                <div class="tpl-portlet-components">
                    <div class="portlet-title">

                        <form action="<c:url value='/CustomerServlet'/>" method="get">
                            <input type="hidden" name="method" value="query"/>
                        <div class="col-md-5">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="input-group form">

                                        <input  style="width:220px;height:33px"type="text" name="title" class="form-control" placeholder="Search Comments...">

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

                    <div class="am-g">
                        <div class="am-u-sm-12">
                            <form class="am-form" runat="server">
                                <table class="am-table am-table-striped am-table-hover table-main"><div class="col-md-10">                
                                        <thead>
                                            <tr>
                                                <th class="table-title">User</th>                                           
                                                <th class="table-type">Time</th>                                  
                                                <th class="table-set">Content</th>
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
                        The page ${pb.pc } of ${pb.tp } pages
                        <a href="<c:url value='/CustomerServlet?method=findAllc&pc=1'/>">Begin</a>
                        <c:if test="${pb.pc>1}">
                            <a href="<c:url value='/CustomerServlet?method=findAllc&pc=${pb.pc-1}'/>">Before</a>
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
                            <a href="<c:url value='/CustomerServlet?method=findAllc&pc=${pb.pc+1}'/>">Next</a>
                        </c:if>
                        <a href="<c:url value='/CustomerServlet?method=findAllc&pc=${pb.tp}'/>">End</a>
                        </form>
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
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <!-- <script src="https://code.jquery.com/jquery.js"></script> -->
    <!-- jQuery UI -->
    <script src="https://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="js/custom.js"></script>
    <script src="js/jquery.min.js"></script>
    <script src="js/amazeui.min.js"></script>
    <script src="js/app.js"></script>
    <!-- <script src="js/tables.js"></script> -->
</body>

</html>
