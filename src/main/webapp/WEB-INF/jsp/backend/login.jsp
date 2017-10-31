<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="taglibs.jsp"%>
<link href="${ctx}/static/css/login.css" rel="stylesheet"/>	
<script src="${ctx}/static/js/login.js"></script>
<title>vertenct</title>
</head>
<body>
	<div class="box">
    <div class="mainbJ">
        <div class="main">
            <div class="logo"></div>
            <form id="loginform" method="post" action="${ctx}/doLogin" class="inner">
                <p>
                  <input class="username" type="text" name="username" id="username" placeholder="请输入用户名">
                  <span><i class="input_icon login_user"></i></span>
                  <span id="err_name" class="msgTxt"></span>
                </p>            
                <p>
                  <input class="password" type="password" name="password" id="password" placeholder="请输入密码">
                  <span><i class="input_icon login_pw"></i></span>
                  <span id="err_pwd" class="msgTxt"></span>
                </p>
				<p style="clear: both;"></p> 
                 <button class="loginButton" type="button" id="login_submit">登录</button>
            </form>
        </div>
    </div>  
</div>
</body>
</html>