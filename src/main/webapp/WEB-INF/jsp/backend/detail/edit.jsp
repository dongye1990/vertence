<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="../taglibs.jsp"%>
<script src="${ctx}/static/js/backend-edit.js"></script> 
<title>sinova</title>
</head>
<body>
	<c:if test="${index==0}">
		<%@include file="../menu.jsp" %>
		<div class="main-content">
	</c:if>
	<c:if test="${index==1}">
		<div>
	</c:if>
	 <div class="page-content">
		<div class="page-header">
			<h1>
				状态管理 <small> <i class="icon-double-angle-right"></i>
				<c:if test="${index==0}">
					状态新增
				</c:if>
				<c:if test="${index==1}">
					状态修改
				</c:if>
				</small>
			</h1>
		</div>
		<div class="row">
			<div class="col-xs-12">
				<form class="form-horizontal" role="form" id="formId">
					<input type="hidden" name="index" value="${index}">
					<input type="hidden" name="id" value="${detail.id}">
					<div class="space-4"></div>
					<div class="form-group">
						<label class="col-sm-2 control-label no-padding-right"
							for="form-field-2"> 订单号： </label>
						<div class="col-sm-9">
							<input type="text" id="form-field-2" name="order" placeholder="请输入订单号" value="${detail.order}" class="col-xs-10 col-sm-10" /> 
						</div>
					</div>
					<div class="space-4"></div>
					<div class="form-group">
						<label class="col-sm-2 control-label no-padding-right"
							for="form-field-2"> 说明： </label>
						<div class="col-sm-9">
							<input type="text" id="form-field-2" name="title" placeholder="请输入标题" value="${detail.title}" class="col-xs-10 col-sm-10" /> 
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label no-padding-right"
							for="form-field-2"> 显示时间： </label>
						<div class="col-sm-9">
							<input type="text" id="form-field-2" name="time" placeholder="请输入时间" value="${detail.time}" class="col-xs-10 col-sm-10" /> 
						</div>
					</div>
					<div class="space-4"></div>
					<div class="form-group">
										<label class="col-sm-4 control-label no-padding-right" ></label>
										<div class="col-sm-8">
											<button class="btn btn-info" type="button" id="save">
												<i class="icon-ok bigger-110"></i> 提交
											</button>
											<button class="btn" type="button" onclick='history.go(0)'>
												<i class="icon-home bigger-110"></i> 重置
											</button>
										</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	</div>
</body>
</html>
