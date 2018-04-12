<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Administration Platform</title>
        <meta http-equiv="Content-Type" content="text/html" ; charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Bootstrap -->
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- styles -->
        <link href="css/styles.css" rel="stylesheet">
        <meta name="keywords" content="index">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="renderer" content="webkit">
        <meta http-equiv="Cache-Control" content="no-siteapp" />
        <link rel="icon" type="image/png" href="assets/i/favicon.png">
        <link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
        <meta name="apple-mobile-web-app-title" content="Amaze UI" />
        <link rel="stylesheet" href="assets/css/amazeui.min.css" />
        <link rel="stylesheet" href="css/admin.css">
        <link rel="stylesheet" href="css/app.css">

    </head>
    <body data-type="login">

        <div class="am-g myapp-login">
            <div class="myapp-login-logo-block  tpl-login-max">
                <div class="myapp-login-logo-text">
                    <div class="myapp-login-logo-text">
                        Healthy Aid Administration<span> Platform</span> <i class="am-icon-skyatlas"></i>
                    </div>
                </div>

                <div class="am-u-sm-10 login-am-center">
                    <p style="color: red; font-size: 8pt; font-weight: 900;">
                        ${msg }
                    </p>
                    <form class="am-form" action="<c:url value='/CustomerServlet'/>" method="post">
                        <div class="am-form-group">
                            <input type="email" class="" id="doc-ipt-email-1" placeholder="Enter User Name">
                        </div>
                        <div class="am-form-group">
                            <input type="password" class="" id="doc-ipt-pwd-1" placeholder="Enter Password">
                        </div>
                        <p><button type="submit" class="am-btn am-btn-default">LogIn</button></p>
                    </form>
                </div>
            </div>
        </div>

        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://code.jquery.com/jquery.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <script src="js/custom.js"></script>
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/amazeui.min.js"></script>
        <script src="assets/js/app.js"></script>
    </body>
</html>