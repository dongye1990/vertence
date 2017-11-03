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
     <div class="result-content">
       <div class="container n-container">
           <div class="result-content-title clearfix">
               <span>Your search results are as follows</span>
               <span class="fr"><span class="fc-blue">50</span> results</span>
           </div>
           
           <c:forEach items="${searchVoList }" var="d">
		       <div class="news-item">
	               <a href="searchDetail?id=${d.detailid }" target="_blank">
	                   <div class="rc-title" title="${d.title }">${d.title }</div>
	                   <div data-length="180" class="rc-content xzl fm-song fs-12 fc-999">
	                   ${d.content }
	                   </div>
	               </a>
	               <div class="mlrf mlrf-date">
	                   <img src="static/images/2016110103.png">
	                   <span class="fs-font">${d.createtime }</span>
	               </div>
	           </div>
		  </c:forEach>
       </div>
   </div>
   <%@include file="../footer.jsp" %>
</body>
</html>
