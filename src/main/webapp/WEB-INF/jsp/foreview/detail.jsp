<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="taglibs.jsp"%>
<title></title>
</head>
<body style="min-width:1200px;">
<%@include file="head.jsp" %>
   <div class="container n-container">
      <div class="n-content">
         <div class="news-detail">
            <h3>${detail.title}</h3>
            <div class="detail-box">
               <span>time：</span>
               <span style="margin-right:50px;">${detail.createTime}</span>
            </div>
         </div>
			${detail.content}
			<br/>
			<c:if test="${fn:length(attachmentList) > 0}">  
				<div class="fj-down">technical data sheet download</div>
				<c:forEach items="${attachmentList }" var="d">
								<div>
						<a class="fj" href="backend/file/export?id=${d.id}" title='${d.filename }'>${d.filename }</a>
					</div>
				</c:forEach>
			</c:if>
		</div>
   </div>
<%@include file="footer.jsp" %>
</body>
</html>