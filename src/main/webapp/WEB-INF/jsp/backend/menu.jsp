<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>  
<div class="navbar navbar-default" id="navbar">
	<div class="navbar-container" id="navbar-container">
		<div class="navbar-header pull-left">
			<a href="../../" class="navbar-brand"> <small> <i
					class="icon-leaf"></i> Sinova
			</small>
			</a>
		</div>
		<div class="navbar-header pull-right" role="navigation">
			<ul class="nav ace-nav">
				<li class="light-blue"><a data-toggle="dropdown" href="#"
					class="dropdown-toggle"> <img class="nav-user-photo"
						src="${ctx}/static/aceadmin/assets/avatars/user.jpg"
						alt="Jason's Photo" /> 
						<span class="user-info" > <small>欢迎光临,</small>
							${username}
					</span> <i class="icon-caret-down"></i>
				</a>
					<ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
						<li><a href="${ctx}/backend/logout"> <i class="icon-off"></i> 退出</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
</div>

<div class="main-container" id="main-container">

	<div class="main-container-inner">
		<a class="menu-toggler" id="menu-toggler" href="#"> <span
			class="menu-text"></span>
		</a>
		<div class="sidebar" id="sidebar">
			<ul class="nav nav-list">
				<li class="active"><a href="#"> <i class="icon-dashboard"></i>
						<span class="menu-text"> 控制台 </span>
				</a></li>
				<li>
					 <a href="#" class="dropdown-toggle"> 
					     <i class="icon-desktop"></i><span class="menu-text"> 用户管理 </span><b class="arrow icon-angle-down"></b>
					 </a>
					<ul class="submenu" style="display: block;">
						<li>
							<a href="${ctx}/backend/user/list"> <i class="icon-double-angle-right"></i>新闻列表</a>
						</li>
					</ul>
				</li>
				<li>
					 <a href="#" class="dropdown-toggle"> 
					     <i class="icon-list"></i><span class="menu-text">状态</span><b class="arrow icon-angle-down"></b>
					 </a>
					<ul class="submenu" style="display: block;">
						<li>
							<a href="${ctx}/backend/detail/list"> <i class="icon-double-angle-right"></i>状态列表</a>
						</li>
						<li>
							<a href="${ctx}/backend/detail/toAdd?index=0"> <i class="icon-double-angle-right"></i>状态新增</a>
						</li>
					</ul>
				</li>
			</ul>
			<div class="sidebar-collapse" id="sidebar-collapse">
				<i class="icon-double-angle-left"
					data-icon1="icon-double-angle-left"
					data-icon2="icon-double-angle-right"></i>
			</div>
		</div>
	</div>
</div>
