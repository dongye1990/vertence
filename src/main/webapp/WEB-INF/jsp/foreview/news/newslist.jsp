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
   <!-- 背景图 -->
   <div class="hd-banner">
      <img src="static/images/vt_2017091001.jpg" alt="">
   </div>

   <!-- 新闻列表 -->
   <div class="container n-container">
      <div class="ygsjd_head n-hed">
            <div class="ygsjd_titel">News</div>
      </div>
	  <div class="n-content">
         <c:forEach items="${newsList }" var="d">
	         <div class="n-list clearfix">
		         <div class="ygsjnc_squre fl"></div>
		         <div class="n-title fl"><a href="newsdetail?id=${d.id }" target="_blank" title="${d.title }">${d.title }</a></div>
		         <c:if test="${d.status==2 }">
		         	<div class="top fl">【置顶】</div>
		         </c:if>
		         <div class="n-date fr">【${d.year}-${d.month}-${d.day}】</div>
	        </div>
		  </c:forEach>
		  
		  <div style="text-align: center;margin-top:20px;">
		  	 <div class="pagination" style="display:inline-block;"></div>
		  </div>
	   </div>
            
   </div>
   <%@include file="../footer.jsp" %>
</body>
</html>
<script type="text/javascript">
var pageIndex =${page};  
var pageCount =${count};  
var pageSize = 10;   
var count=0;
$(function () {
       $(".pagination").pagination(pageCount, {
           callback: PageCallback,  
           items_per_page:pageSize,
           current_page: pageIndex,   //当前页索引
       });
       function PageCallback(index, jq) {
    	   if(count++!=0){
    	      window.location.href ="newslist?page="+index;
    	   }
       }  
       //请求数据   
       function InitTable(pageIndex) {                                  
           $.ajax({   
               type: "POST",  
               dataType: "text",  
               url: '',      //提交到一般处理程序请求数据   
               data: "pageIndex=" + (pageIndex) + "&pageSize=" + pageSize,          //提交两个参数：pageIndex(页面索引)，pageSize(显示条数)                   
               success: function(data) {
                   $("#Result tr:gt(0)").remove();        //移除Id为Result的表格里的行，从第二行开始（这里根据页面布局不同页变）   
                   $("#Result").append(data);             //将返回的数据追加到表格   
               }  
           }); 
       }
   }); 
</script>