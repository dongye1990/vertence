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
                                <h1 class="title">Logistics</h1>
                            </div>
                            <div class="breadcrumb-wrapper">
                                <span class="mr-1"><i class="ti ti-home"></i></span>
                                <a title="Homepage" href="index.html">Home</a>
                                <span class="ttm-bread-sep">&nbsp;/&nbsp;</span>
                                <span class="ttm-textcolor-skincolor">Logistics</span>
                            </div>
                        </div>
                    </div>
                </div>  
            </div>                    
        </div><!-- page-title end-->

    <!--site-main start-->
    <div class="site-main">

       <!-- cart-section -->
        <section class="cart-section clearfix">
            <div class="container">
                <!-- row -->
                <div class="row">
					<div
						class="col-xs-12 col-sm-12 col-md-8 col-lg-5 widget-area m-auto">
						<div class="widget ttm-footer-cta-wrapper">
							<form id="subscribe-form" class="newsletter-form" method="post"
								action="search" data-mailchimp="true">
								<div class="mailchimp-inputbox clearfix" id="subscribe-content">
									<p>
										<input type="text" class="input-text zip-code"  name="order" value="${order }" placeholder="Your orderSn..">
									</p>
									<p>
										<input type="submit" value="SUBMIT" id="query" type="submit">
									</p>
								</div>
								<div id="subscribe-msg"></div>
							</form>
						</div>
					</div>
					<br/> <br/> <br/> <br/>
					<div class="col-lg-12">
                        <!-- cart_table -->
                        <table class="table cart_table shop_table_responsive">
                            <thead>
                                <tr>
                                    <th class="product-name" style="text-align: left;">orderSn</th>
                                    <th class="product-name" style="text-align: left;">time</th>
                                    <th class="product-name" style="text-align: left;">detail</th>
                                </tr>
                            </thead>
							<tbody>
								<c:forEach items="${detailList }" var="d">
									<tr class="cart_item">
										<td class="product-name" data-title="Product">${d.order }</td>
										<td class="product-name" data-title="Product">${d.time }</td>
										<td class="product-name" data-title="Product">${d.title }</td>
									</tr>
								</c:forEach>
								 <tr>
                                    <th class="product-name" style="text-align: left;"></th>
                                    <th class="product-name" style="text-align: left;"></th>
                                    <th class="product-name" style="text-align: left;"></th>
                                </tr>
							</tbody>
						</table>
                    </div>
                </div>
            </div>
        </section><!-- cart-section end-->
    </div><!--site-main end-->
		<%@include file="../footer.jsp"%>
	</div>
	<!-- page end -->
</body>
</html>
