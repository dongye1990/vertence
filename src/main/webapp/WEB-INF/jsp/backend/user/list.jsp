<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="../taglibs.jsp"%>
<script src="${ctx}/static/js/backend-list.js"></script> 
<title>sinova</title>
</head>
<body>
	<body>
	<%@include file="../menu.jsp" %>
				<div class="main-content">
					<div class="page-content">
						<div class="page-header">
							<h1>
								用户管理
								<small>
									<i class="icon-double-angle-right"></i>
									用户列表
								</small>
							</h1>
						</div>
						<div class="row">
							<div class="col-xs-12">
										<div class="table-responsive">
										<table id="hexin-table" class="table table-striped table-bordered table-hover">
												<thead>
													<tr>
														<th>id</th>
														<th>姓名</th>
														<th width="30%">电话</th>
														<th width="30%">email</th>
														<th width="20%">创建时间</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${userList }" var="d">
													<tr>
														<td>${d.id }</td>
														<td>${d.name }</td>
														<td>${d.phone }</td>
														<td>${d.email }</td>
														<td><fmt:formatDate value="${d.createTime }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
													</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
									</div>
							</div>
					</div>
				</div>
</body>
</html>
