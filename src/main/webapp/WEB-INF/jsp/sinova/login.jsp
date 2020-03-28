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
                                <h1 class="title">Login</h1>
                            </div>
                            <div class="breadcrumb-wrapper">
                                <span class="mr-1"><i class="ti ti-home"></i></span>
                                <a title="Homepage" href="index.html">Home</a>
                                <span class="ttm-bread-sep">&nbsp;/&nbsp;</span>
                                <span class="ttm-textcolor-skincolor">Login</span>
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
                    <div class="col-lg-4 col-md-12 ml-auto mr-auto">
                        <div class="wrap-login">
                            <form id="loginForm">
                                <div class="form-group">
                                    <i class="fa fa-envelope-o"></i>
                                    <input type="email" name='email' placeholder="Email"/>     
                                </div>
                                <div class="form-group">
                                    <i class="fa fa-lock"></i>
                                    <input type="password" name='password' placeholder="password"/>     
                                </div>
                                <div class="form-group">
                                    <button class="button action-button expand-center mb-15" type='button' >
                                        <lable class="label" id="login_submit">Login</lable>
                                    </button>
                                </div>
								<div class="form-group d-flex justify-content-between">
									<div class="d-flex flex-row align-items-center justify-content-start">
										<span id="err_pwd" class="ttm-textcolor-darkgrey" style="color: red;"> </span>
									</div>
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
	<script type="text/javascript">
	$('#login_submit').click(function() {  
		      $.ajax({  
				type: "POST",  
				async: true,
				url: "login",  
				data:$('#loginForm').serialize(),
				dataType:'text',
				success:function (data){
						if(data==0){
							$("#err_pwd").text("Prompt password error!");
							$("#password").val('');
						}else if(data==1){
							 window.location.href = '/';
						}else if(data==2){
							 window.location.href = 'backend/main';
						}
					}
				});
	});
	</script>
</body>
</html>

