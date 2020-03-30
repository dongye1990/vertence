<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="../taglibs.jsp"%>
<link rel="stylesheet" type="text/css" href="${ctx}/static/ueditor1_4_3/themes/default/css/ueditor.css" />
<script type="text/JavaScript" src="${ctx}/static/ueditor1_4_3/ueditor.config.js"></script>
<script type="text/javascript" src="${ctx}/static/ueditor1_4_3/ueditor.all.min.js"></script>
<script type="text/javascript" charset="utf-8" src="${ctx}/static/ueditor1_4_3/lang/zh-cn/zh-cn.js"></script>
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
				新闻管理 <small> <i class="icon-double-angle-right"></i>
				<c:if test="${index==0}">
					新增新闻
				</c:if>
				<c:if test="${index==1}">
					修改新闻
				</c:if>
				</small>
			</h1>
		</div>
		<div class="row">
			<div class="col-xs-12">
				<form class="form-horizontal" role="form" id="formId">
					<input type="hidden" name="index" value="${index}">
					<input type="hidden" name="id" value="${news.id}">
					<input type="hidden" name="content" id="content" value='${news.content}'>
					<div class="space-4"></div>
					<div class="form-group">
						<label class="col-sm-2 control-label no-padding-right"
							for="form-field-2"> 标题： </label>
						<div class="col-sm-9">
							<input type="text" id="form-field-2" name="title" placeholder="请输入标题" value="${news.title}" class="col-xs-10 col-sm-10" /> 
						</div>
					</div>
					<div class="space-4"></div>
							<div class="form-group">
						<label class="col-sm-2 control-label no-padding-right"
							for="form-field-2"> 状态： </label>
						<div class="col-sm-9">
							<select class="width-40 chosen-select" id="form-field-select-3" name="status"  data-placeholder="请选择状态...">
								<option value="1" selected>正常</option>
								<option value="2" >置顶</option>
								<option value="3" >隐藏</option>
							</select>
						</div>
					</div>
					<script>
					if("${news.status}"==0){
						$($("option")[3]).attr("selected",true);
					}else if("${news.status}"==1){
						$($("option")[0]).attr("selected",true);
					}else if("${news.status}"==2){
						$($("option")[1]).attr("selected",true);
					}else if("${news.status}"==3){
						$($("option")[3]).attr("selected",true);
					}
					</script>
					<div class="space-4"></div>
					<div class="form-group">
						 <label class="col-sm-2 control-label no-padding-right" for="form-field-tags"> 正文： </label>
					     <script id="editor" type="text/plain" style="width:1024px;height:400px;margin-left:18%"></script>
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
