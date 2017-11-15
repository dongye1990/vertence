<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="../taglibs.jsp"%>
<title></title>
</head>
<body style="min-width:1200px;">
<%@include file="../head.jsp" %>
   <div class="container" style="padding-top:25px;">
   <div>
   		<div class="detail-position fl"><a href="index">HOME</a> > <a href="newslist">NEWS</a> > ${news.title}</div>
   		<div class="detail-back fr"><a href="#" onClick="javascript :history.go(-1);"> < Back</a></div>
   </div>
      <div class="n-content clearfix" style="margin-top: 45px;">
	      <div class="fl" style="width:720px;">
	         <div class="news-detail">
	            <h3>${news.title}</h3>
	            <div class="detail-box">
	               <span>time：</span>
	               <span style="margin-right:50px;">${news.year}-${news.month}-${news.day}</span>
	               <span>readcount：</span>
	               <span>${news.count}</span>
	            </div>
	         </div>
				${news.content}
			</div>
			<div class="detail-right fl">
				<div class="detail-titel">Category</div>
				<div class="detail-text"><a href="index">HOME ></a> <a href="newslist">NEWS</a></div>
				<div class="detail-titel">Download & share</div>
				<div class="clearfix">
				<c:choose>
				    <c:when test="${fn:length(attachmentList) > 0}">
				    	<c:forEach items="${attachmentList }" var="d">
							<a href="backend/file/export?id=${d.id}" class="detail-imgs detail-download fl">Technical specification</a>
						</c:forEach>
				    </c:when>
				    <c:otherwise>
						<a class="detail-imgs detail-download fl">Technical specification</a>
				    </c:otherwise>
				</c:choose>
					<a href="mail" class="detail-imgs detail-share fl">Request information</a>
					<a href="" class="detail-icon detail-icon1 fl"></a>
					<a href="" class="detail-icon detail-icon2 fl"></a>
					<a href="" class="detail-icon detail-icon3 fl"></a>
					<a href="" class="detail-icon detail-icon4 fl"></a>
				</div>
			</div>
		</div>
   </div>
<%@include file="../footer.jsp" %>
</body>
</html>