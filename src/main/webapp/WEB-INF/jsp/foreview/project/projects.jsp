<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="../taglibs.jsp"%>
<script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyBzE9xAESye6Kde-3hT-6B90nfwUkcS8Yw&sensor=false&language=en-US"></script>
<script type="text/javascript"  src="${ctx}/static/js/googlemaps.js"></script>
<title>vertence</title>
</head>
<body style="min-width: 1200px;">
	<%@include file="../head.jsp"%>
	<div class="container" style="padding-top:25px;">
   <div>
   		<div class="detail-position fl"><a href="index">HOME</a> >projects</div>
   		<div class="detail-back fr"><a href="#" onClick="javascript :history.go(-1);"> < Back</a></div>
   </div>
      <div class="n-content clearfix" style="margin-top: 35px;">
		<ul class="nav-left fl">
			<span class="nleft-title">Select a Client Market</span>
			<li id="ivoire_Biogas">Abidjan-Cote_D'ivoire_Biogas</li>
			<li id="Cote_Solar_Pump">Abidjan-Cote_Solar_Pump</li>
			<li id="Anhui_PV">Anhui_PV Project</li>
			<li id="Jiangsu_PV">Jiangsu_PV Project</li>
			<li id="Nanjing_Biogas_Power_Plant">Nanjing_Biogas_Power_Plant</li>
			<li id="Nanjing_Intelligent_Greenhouse">Nanjing_Intelligent_Greenhouse</li>
			<li id="Nigeria_Solar_Pump">Nigeria_Solar_Pump</li>
			<li id="ningxia_PV">ningxia_PV Project</li>
			<li id="qinghai_PV">qinghai_PV Project</li>
			<li id="Shandong_PV">Shandong_PV Project</li>
			<li id="ShandongBiogas">Shandong-Biogas</li>
			<li id="Sudan_Pressure_Vessel">Sudan_Pressure_Vessel</li>
			<li id="Sudan_PV">Sudan_PV Project</li>
			<li id="Sudan_Solar">Sudan_Solar Pump</li>
			<li id="Sudan_Water_Treatment">Sudan_Water_Treatment</li>
		</ul>
		<div class="fl left-map" id="googleMap"
			style="width: 940px; height: 620px;"></div>
	</div>
	</div>
	<%@include file="../footer.jsp"%>
</body>
</html>