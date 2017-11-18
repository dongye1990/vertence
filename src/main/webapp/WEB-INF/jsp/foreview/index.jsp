<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="taglibs.jsp"%>
<title>vertence</title>
</head>
<body style="min-width:1200px;">
  <%@include file="head.jsp" %>
   <!-- 公司介绍开始 -->
   <div class="advantage">
      <div class="container clearfix">
         <h2 class="adv_left fl">
        VERTENCE designs, builds and develops the world's new energy field engineering.</h2>
         <div class="adv_right fr" id="adv_right">
            VERTENCE is one of the professional design, research, development, installation, consultation enterprises.Providing the integrated services for the clients' solar energy, bio-gas power, water treatment, intelligent farming and pressure vessel field projects. 
         </div>
      </div>
   </div>
   <!-- 公司介绍结束 -->
   
   <div class="vtimg-box">
      <div class="container clearfix">
         <div class="link-list link-list1 fl">
            <a href="#" class="link-toggle">
               <img src="static/images/vt_2017091702.png" alt="">
            </a>
         </div>
         <div class="link-list fl">
            <a href="#" class="link-toggle link-toggle2">
               <img src="static/images/vt_2017091703.png" alt="">
            </a>
         </div>
         <div class="link-list fl">
            <a href="#" class="link-toggle link-toggle4">
               <img src="static/images/vt_2017091704.png" alt="">
            </a>
         </div>
         <div class="link-list fl">
            <a href="#" class="link-toggle link-toggle4">
               <img src="static/images/vt_2017091705.png" alt="">
            </a>
         </div>
         <div class="link-list link-list1 fl">
            <a href="#" class="link-toggle link-toggle3">
               <img src="static/images/vt_2017091706.png" alt="">
            </a>
         </div>
      </div>
   </div>

   <div class="container clearfix">
      <!-- 地图开始 -->
      <div class="mapmap fl">
         <a href="projects" ><img src="static/images/vt_2017082508.jpg" alt="" width="705" height="350"></a>
         <a href="projects"  class="map_link">View Projects around the World</a>
      </div>
      <!-- 地图结束 -->

      <!-- 新闻开始 -->
      <div class="news fr">
         <div class="news-top">
             <div class="module-title">
                 <img class="blocker" src="static/images/vt_2017082501.png" alt="">
                 <span class="module-titlech">News</span>
             </div>
             <a href="newslist" class="more" title="more" >
                <img src="static/images/vt_2017082503.png" alt="">
                <span>more</span>
             </a>
             <div class="mlt-red"></div>
         </div>
			<c:forEach items="${newsList }" var="d">
                <div class="ib-list clearfix">
                    <div class="ib-date fl">
                        <span class="ib-month">${d.month }</span>
                        <span class="ib-day">${d.day }</span>
                    </div>
                    <div class="ib-article fl">
                        <a href="newsdetail?id=${d.id }"  title="${d.title }">
                            <div data-length="22" class="ibc-title xzl" >${d.title }</div>
                            <div data-length="34" class="it-content xzl">${d.simpleContent }</div>
                        </a>
                    </div>
                </div>
			</c:forEach>

      </div>
      <!-- 新闻结束 -->
   </div>

   <!-- 视频部分开始 -->
   <div class="container">
      <div class="vt_video" id="vt_video">
         <video id="vtr_url" class="fl" src="static/video/Biogas_Power_Plant_1.mp4" width="570" height="330" controls autobuffer></video>
         <div class="vt-right fl">
            <div class="vtr_h3" id="vtr_title"></div>
            <p id="vtr_content"></p>
         </div>
         <div style="clear:both;"></div>
         <img class="video_close" src="static/images/vt_2017073113.png" alt="" id="video_close">
         <div class="video-bottom clearfix">
            <div id="video_5" class="video-item fl">
               <img src="static/images/video_5.png" alt="">
               <div class="vi-int">Material _Supplement</div>
            </div>
            <div id="video_6" class="video-item fl">
               <img src="static/images/video_6.png" alt="">
               <div class="vi-int">PV_Station</div>
            </div>
            <div id="video_7" class="video-item fl">
               <img src="static/images/video_7.png" alt="">
               <div class="vi-int">PV_Station_Project</div>
            </div>
            <div id="video_8" class="video-item fl">
               <img src="static/images/video_8.png" alt="">
               <div class="vi-int">Solar-Panel</div>
            </div>
            <div id="video_9" class="video-item fl">
               <img src="static/images/video_9.png" alt="">
               <div class="vi-int">Water_Treatment1</div>
            </div>
            <div id="video_10" class="video-item fl">
               <img src="static/images/video_10.png" alt="">
               <div class="vi-int">Water_Treatment2</div>
            </div>
            <div id="video_11" class="video-item fl">
               <img src="static/images/video_11.png" alt="">
               <div class="vi-int">Water_Treatment3</div>
            </div>
         </div>
      </div>

      <div class="vt_section clearfix">
         <div class="vts_item fl">
            <div class="vts_box">
               <img src="static/images/video_0.png" alt="">
               <img class="videu_img" src="static/images/vt_2017073112.png" alt="">
            </div>
            <div>Biogas Power Plant</div>
            <div id="video_0" class="mark"> offers Clients benefits through cost savings, better predictability and improved safety.</div> 
         </div>
         <div class="vts_item fl">
             <div class="vts_box">
               <img src="static/images/video_1.png" alt="">
               <img class="videu_img" src="static/images/vt_2017073112.png" alt="">
            </div>
            <div>Biogas Power Station Simulation</div>
            <div id="video_1" class="mark"> offers Clients benefits through cost savings, better predictability and improved safety.</div> 
         </div>
         <div class="vts_item fl">
             <div class="vts_box">
               <img src="static/images/video_2.png" alt="">
               <img class="videu_img" src="static/images/vt_2017073112.png" alt="">
            </div>
            <div>Combined energy</div>
            <div id="video_2" class="mark"> offers Clients benefits through cost savings, better predictability and improved safety.</div> 
         </div>
         <div class="vts_item fl">
             <div class="vts_box">
               <img src="static/images/video_3.png" alt="">
               <img class="videu_img" src="static/images/vt_2017073112.png" alt="">
            </div>
            <div>Environment protection</div>
            <div id="video_3" class="mark"> offers Clients benefits through cost savings, better predictability and improved safety.</div> 
         </div>
         <div class="vts_item fl">
             <div class="vts_box">
               <img src="static/images/video_4.png" alt="">
               <img class="videu_img" src="static/images/vt_2017073112.png" alt="">
            </div>
            <div>Intelligent Agriculture</div>
            <div id="video_4" class="mark"> offers Clients benefits through cost savings, better predictability and improved safety.</div> 
         </div>
      </div>
   </div>
   <!-- 视频部分结束 -->

<%@include file="footer.jsp" %>
</body>
</html>
