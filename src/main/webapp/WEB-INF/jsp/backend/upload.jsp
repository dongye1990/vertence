<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="multipart/form-data; charset=utf-8" />
<%@ include file="taglibs.jsp"%>
<script src="${ctx}/static/js/upload.js"></script> 
<title>vertence</title>
</head>
<body>
  <div>
	 <div class="page-content">
		<div class="page-header">
			<h1>
				attachmentManager
			</h1>
		</div>
		<div class="row">
			<div class="col-xs-12">
				<form class="form-horizontal" enctype="multipart/form-data"  id="formId" method="post">
				  <input id="foreignid" style="display:none" value=${foreignid }>
				  <input id="type" style="display:none" value=${type }>
					 <c:forEach items="${attachmentList }" var="d">
						 <div class="form-group">
		                    <div class="col-xs-10">
		                       <a href="export?id=${d.id}" title='${d.filename }'>${d.filename }</a>
		                       <span><fmt:formatDate value="${d.createTime }" pattern="yyyy-MM-dd HH:mm:ss"/></span>
		                       <a onclick="del(${d.id})"><i class="icon-trash bigger-150 icon-danger"></i></a>
		                    </div>
		                </div>
					</c:forEach>
					 <div class="form-group">
	                    <div class="col-xs-8">
	                        <input type="file" name="attrFile" id="attrFile" />
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
