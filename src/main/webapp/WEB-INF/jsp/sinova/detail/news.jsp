<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="../taglibs.jsp"%>
<title>sinova</title>
</head>
<body>
	<!--page start-->
	<div class="page">
		<%@include file="../head.jsp"%>
         <!-- page-title -->
        <div class="ttm-page-title-row">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="page-title-heading">
                                <h1 class="title">News</h1>
                            </div>
                            <div class="breadcrumb-wrapper">
                                <span class="mr-1"><i class="ti ti-home"></i></span>
                                <a title="Homepage" href="index.html">Home</a>
                                <span class="ttm-bread-sep">&nbsp;/&nbsp;</span>
                                <span class="ttm-textcolor-skincolor">News</span>
                            </div>
                        </div>
                    </div>
                </div>  
            </div>                    
        </div><!-- page-title end-->

    <!--site-main start-->
    <div class="site-main">

        <!-- sidebar -->
        <section class="sidebar ttm-sidebar-right clearfix">
            <div class="container">
                <!-- row -->
                <div class="row">
                    <div class="col-lg-12 content-area">
                   	 	<c:forEach items="${newsList }" var="d">
	                        <!-- post -->
	                        <article class="post ttm-blog-classic clearfix">
	                             <!-- post-featured-wrapper -->
	                            <div class="ttm-post-featured-wrapper ttm-featured-wrapper">
	                                <div class="ttm-post-featured">
	                                    <img class="img-fluid" src="images/blog/blog-one-1200x720.jpg" alt="">
	                                </div>
	                                <div class="ttm-box-post-icon">
	                                    <i class="ti ti-gallery"></i>
	                                </div>
	                            </div><!-- post-featured-wrapper end -->
	                            <!-- ttm-blog-classic-content -->
	                            <div class="ttm-blog-classic-content">
	                                <div class="ttm-post-entry-header">
	                                    <div class="post-meta">
	                                        <span class="ttm-meta-line byline"><i class="fa fa-user"></i>Admin</span>
	                                        <span class="ttm-meta-line tag-link"><i class="fa fa-tag"></i><fmt:formatDate value="${d.createTime }" pattern="yyyy-MM-dd HH:mm:ss"/></span>
	                                    </div>
	                                    <header class="entry-header">
	                                        <h2 class="entry-title"><a href="news?id=${d.id }">${d.title }</a></h2>
	                                    </header>
	                                </div>
	                                <div class="entry-content">
	                                    <div class="ttm-blogbox-desc-footer">
	                                        <div class="ttm-blogbox-footer-readmore">
	                                            <a class="ttm-btn ttm-btn-size-md ttm-btn-shape-square ttm-btn-style-border ttm-icon-btn-right ttm-btn-color-black" href="news?id=${d.id }" title="">Read <i class="ti ti-angle-double-right"></i></a>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div><!-- ttm-blog-classic-content end -->
	                        </article><!-- post end -->
						</c:forEach>
                    </div>
                </div><!-- row end -->
            </div>
        </section>
        <!-- sidebar end -->

    </div><!--site-main end-->
		<%@include file="../footer.jsp"%>
	</div>
	<!-- page end -->
</body>
</html>
