<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
  <head>
    <title>Bootstrap Admin Theme v3</title>
    <meta http-equiv="Content-Type" content="text/html" ; charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- styles -->
    <link href="css/styles.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>
  <body class="login-bg" style="background:url(images/background1.png) no-repeat; background-position: center center; background-size: cover;">
  	<div class="header">
	     <div class="container">
	        <div class="row">
	           <div class="col-md-12">
	              <div class="logo">
	                 <h1 style="color: #FFFFFF">健康妈妈运营管理平台</h1>
	              </div>
	           </div>
	        </div>
	     </div>
	</div>

	<div class="page-content container" >
		<div class="row" style="padding-top:200px">
			<div class="col-md-4 col-md-offset-4">
				<div class="login-wrapper">
			        <div class="box">
			            <div class="content-wrap">
			                <!-- <h6>Sign In</h6>
			                <div class="social">
	                            <a class="face_login" href="#">
	                                <span class="face_icon">
	                                    <img src="images/facebook.png" alt="fb">
	                                </span>
	                                <span class="text">Sign in with Facebook</span>
	                            </a>
	                            <div class="division">
	                                <hr class="left">
	                                <span>or</span>
	                                <hr class="right">
	                            </div>
	                        </div> -->
 	 						 <p style="color: red; font-size: 11pt; font-weight: 900;">
 								${msg }
 							</p>
 									<form action="<c:url value='/CustomerServlet'/>" method="post">
 									<input type="hidden" name="method" value="login"/>
			                <input class="form-control" name="username" type="text" placeholder="邮箱" >
			                <input class="form-control" name="password" type="password" placeholder="密码" >
			                	<input type="submit" value="登录"/>
			                    </form>
			                </div>                
			            </div>
			        </div>

			        <!-- <div class="already">
			            <p>Don't have an account yet?</p>
			            <a href="signup.html">Sign Up</a>
			        </div> -->
			    </div>+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    -
			</div>
		</div>
	</div>



    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://code.jquery.com/jquery.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="js/custom.js"></script>
  </body>
</html>