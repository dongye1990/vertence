<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="taglibs.jsp"%>
<title>sinova</title>
</head>
<body>
	<!--page start-->
	<div class="page">
		<%@include file="head.jsp"%>
        <!-- page-title -->
        <div class="ttm-page-title-row">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="page-title-heading">
                                <h1 class="title">Register</h1>
                            </div>
                            <div class="breadcrumb-wrapper">
                                <span class="mr-1"><i class="ti ti-home"></i></span>
                                <a title="Homepage" href="index.html">Home</a>
                                <span class="ttm-bread-sep">&nbsp;/&nbsp;</span>
                                <span class="ttm-textcolor-skincolor">Register</span>
                            </div>
                        </div>
                    </div>
                </div>  
            </div>                    
        </div><!-- page-title end-->

    <!--site-main start-->
    <div class="site-main">

        <!--login-section-->
        <section class="login-section bg-img2 clearfix">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 ml-auto mr-auto">
                        <div class="wrap-login">
                            <form action="#" id="loginForm">
                                <div class="form-group">
                                    <i class="fa fa-user"></i>
                                    <input type="text" name='username' placeholder="username"/>          
                                </div>
                                <div class="form-group">
                                    <i class="fa fa-envelope-o"></i>
                                    <input type="email" name='email' placeholder="Email"/>     
                                </div>
                                <div class="form-group">
                                    <i class="fa fa-lock"></i>
                                    <input type="password" name='password' placeholder="password"/>     
                                </div>
                                <div class="form-group">
                                    <i class="fa fa-phone"></i>
                                    <input name="your-phone" type="text" value="" placeholder="Cell Phone"/>     
                                </div>
                                <div class="form-group">
                                    <button id="login-button" class="button action-button expand-center mb-15">
                                        <span class="label">Register</span>
                                        <span class="spinner"></span>
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section><!--login-section end-->

    </div><!--site-main end-->
		<%@include file="footer.jsp"%>
	</div>
	<!-- page end -->
</body>
</html>
