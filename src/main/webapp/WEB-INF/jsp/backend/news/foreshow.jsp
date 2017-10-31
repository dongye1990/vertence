<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="../taglibs.jsp"%>
<script src="${ctx}/static/js/news-list.js"></script> 
<title>vertence</title>
</head>
<body>
	<body>
	<%@include file="../menu.jsp" %>
				<div class="main-content">
					<div class="page-content">
						<div class="page-header">
							<h1>
								新闻列表
								<small>
									<i class="icon-double-angle-right"></i>
									列表
								</small>
							</h1>
						</div>
						<div class="row">
							<div class="col-xs-12">
										<div class="table-responsive">
										<div class="cl pd-5 bg-1 bk-gray"> 
										<table id="hexin-table" class="table table-striped table-bordered table-hover">
												<thead>
													<tr>
														<th>标题</th>
														<th width="8%">语言</th>
														<th width="15%">修改时间</th>
														<th width="15%">创建时间</th>
														<th width="12%">操作</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${newsList }" var="d">
													<tr>
														<td>${d.id }</td>
														<td>${d.title }</td>
														<td>${d.type==0?"英文":(d.type==1?"中文":"法文") }</td>
														<td><fmt:formatDate value="${d.updateTime }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
														<td><fmt:formatDate value="${d.createTime }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
														<td>
															<c:choose>  
															    <c:when test="${d.status=='0'}">  
															         <span class="label label-warning">隐&nbsp;藏</span>
															     </c:when>  
															    <c:when test="${d.status=='1'}">  
															         <span class="label label-success">正&nbsp;常</span>
															    </c:when>  
															    <c:when test="${d.status=='2'}">  
															         <span class="label label-info">置&nbsp;顶</span>
															    </c:when>  
															</c:choose>  
														</td>
														
														<td class="td-manage">
															<div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
																<a class="blue" onclick="view(${d.id },${d.title })"  title="查看">
																	<i class="icon-zoom-in bigger-150"></i>
																</a>
																&nbsp;
																<a class="green" onclick="edit(${d.id })"  title="修改">
																	<i class="icon-pencil bigger-150"></i>
																</a>
																&nbsp;
																<a class="green" onclick="del(this,${d.id })"  title="删除">
																	<i class="icon-trash bigger-150"></i>
																</a>
															</div>
														</td>
													</tr>
													</c:forEach>
												</tbody>
												</tbody>
											</table>
										</div>
									</div>
							</div>
					</div>
				</div>
</body>
</html>
