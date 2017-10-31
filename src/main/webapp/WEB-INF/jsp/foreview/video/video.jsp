<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="../taglibs.jsp"%>
<title>vertence</title>
</head>
<body style="min-width: 1200px;">
	<%@include file="../head.jsp"%>
	<!-- 新闻列表 -->
	<div class="container nw-container">
		 <div class="part-box">
         <c:choose>
         	<c:when test="${detail.detailid=='e437d4ea4bdc497c94fca78329cbdb53'}">
           		<video  src="static/video/Biogas_Power_Plant_1.mp4" width="870" height="430" controls autobuffer></video>
         	</c:when>
         	<c:when test="${detail.detailid=='905a5f9601534ee6b049c70a7ebc261d'}">
           		<video  src="static/video/Biogas_Power_Plant_2.mp4" width="870" height="430" controls autobuffer></video>
         	</c:when>
         	<c:when test="${detail.detailid=='ec17202651ec487caa36bf76e580f529'}">
           		<video  src="static/video/Combined_Energy.mp4" width="870" height="430" controls autobuffer></video>
         	</c:when>
         	<c:when test="${detail.detailid=='6239fc56d4bb4a4e864fb7d626e185fa'}">
           		<video  src="static/video/Environment_Protection.mp4" width="870" height="430" controls autobuffer></video>
         	</c:when>
         	<c:when test="${detail.detailid=='c6a9703df2c6494293d62e3874a11743'}">
           		<video  src="static/video/Intelligent_Agriculture.mp4" width="870" height="430" controls autobuffer></video>
         	</c:when>
         	<c:when test="${detail.detailid=='3ce8448b1aa044219eb63da2402803dd'}">
           		<video  src="static/video/Material _Supplement.mp4" width="870" height="430" controls autobuffer></video>
         	</c:when>
         	<c:when test="${detail.detailid=='b93e3d332ddd44cbbe465c860068efee'}">
           		<video  src="static/video/PV_Station.mp4" width="870" height="430" controls autobuffer></video>
         	</c:when>
         	<c:when test="${detail.detailid=='8c90498215ad460f88c889341227e8d3'}">
           		<video  src="static/video/PV_Station_Project.mp4" width="870" height="430" controls autobuffer></video>
         	</c:when>
         	<c:when test="${detail.detailid=='928744818f834d06bc0ea06773a8cb0d'}">
           		<video  src="static/video/Solar-Panel.mp4" width="870" height="430" controls autobuffer></video>
         	</c:when>
         	<c:when test="${detail.detailid=='68fe09eb38cc49c5ba3d490e605a3c6a'}">
           		<video  src="static/video/Water_Treatment.mp4" width="870" height="430" controls autobuffer></video>
         	</c:when>
         	<c:when test="${detail.detailid=='6cdd8d248b8545048c0ace8ebe1a91dc'}">
           		<video  src="static/video/Water_Treatment_2.mp4" width="870" height="430" controls autobuffer></video>
         	</c:when>
         	<c:when test="${detail.detailid=='43a6921ce1e847c482c25a26fa407197'}">
           		<video  src="static/video/Water_Treatment_3.mp4" width="870" height="430" controls autobuffer></video>
         	</c:when>
         	<c:otherwise>
           		<video  src="static/video/Biogas_Power_Plant_1.mp4" width="870" height="430" controls autobuffer></video>
         	</c:otherwise>
         </c:choose>
         <div class="pt-textintro">
            <div class="ptt_h3">${detail.title}</div>
            <p>${detail.content}</p>
         </div>
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
	<%@include file="../footer.jsp"%>
</body>
</html>