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
														<th width="20%">姓名</th>
														<th width="16%">电话</th>
														<th width="12%">email</th>
														<th width="25%">职位说明</th>
														<th width="8%">状态</th>
														<th width="10%">创建时间</th>
														<th width="10%">操作</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${userList }" var="d">
													<tr>
														<td>${d.name }</td>
														<td>${d.phone }</td>
														<td>${d.email }</td>
														<td>${d.remark }</td>
														<td>
															<c:choose>  
															    <c:when test="${d.status=='0'}">  
															         <span class="label label-warning">待审核</span>
															     </c:when>  
															    <c:when test="${d.status=='1'}">  
															         <span class="label label-success">正常访问</span>
															    </c:when>  
															    <c:when test="${d.status=='2'}">  
															         <span class="label label-info">访问拒绝</span>
															    </c:when>  
															</c:choose>  
														</td>
														<td><fmt:formatDate value="${d.createTime }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
														<td class="td-manage">
															<div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
																<a class="green" onclick="edit(${d.id })"  title="修改">
																	<i class="icon-pencil bigger-150"></i>
																</a>
															</div>
														</td>
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
