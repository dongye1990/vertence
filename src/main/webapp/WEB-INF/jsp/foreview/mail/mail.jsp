<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="../taglibs.jsp"%>
<link rel="stylesheet" href="${ctx}/static/aceadmin/assets/css/bootstrap.min.css" />
<script src="${ctx}/static/js/mail.js"></script> 
<title>vertence</title>
</head>
<body style="min-width: 1200px;">
	<%@include file="../head.jsp"%>
	<!-- 新闻列表 -->
	<div class="container n-container">
		<div class="n-content">
			<form class="form-horizontal" role="form" id="mailForm">
				<div class="page-header">
				<h2>Email support</h2>
				<br>
						<small>
							If you have any information about the product or service, please feel free to email us. In order to provide you with more efficient service, We sincerely hope you can describe as fully as possible. We'll try our best to give you a reply within a working day.
						</small>
				</div>
				<div class="form-group">
					<label for="firstname" class="col-sm-2 control-label">Name</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="name" >
					</div>
				</div>
				<div class="space-4"></div>
				<div class="form-group">
				    <label for="name" class="col-sm-2 control-label">Gender</label>
					<div class="col-sm-10">
					 <label class="radio-inline"> <input type="radio"
						name="gender"  value="option1"
						checked> man
					</label> <label class="radio-inline"> <input type="radio"
						name="gender"  value="option2">
						woman
					</label>
					</div>
				</div>
				<div class="space-4"></div>
				<div class="form-group">
					<label for="firstname" class="col-sm-2 control-label">Country</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="country">
					</div>
				</div>
				<div class="space-4"></div>
				<div class="form-group">
					<label for="firstname" class="col-sm-2 control-label">City</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="city">
					</div>
				</div>
				<div class="space-4"></div>
				<div class="form-group">
					<label for="firstname" class="col-sm-2 control-label">Company Name</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="companyName">
					</div>
				</div>
				<div class="space-4"></div>
				<div class="form-group">
					<label for="firstname" class="col-sm-2 control-label">Email address</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="email">
					</div>
				</div>
				<div class="space-4"></div>
				<div class="form-group">
				    <label for="name" class="col-sm-2 control-label">Product type</label>
					<div class="col-sm-10">
					 <label class="radio">
					   <input type="radio" name="producttype"  value="PV products and solar powered pumps, etc" checked>
					    PV products and solar powered pumps, etc;
					</label> 
					<label class="radio"> 
					   <input type="radio" name="producttype"  value="Intelligent agriculture">
					   Intelligent agriculture;
					</label>
					<label class="radio"> 
					   <input type="radio" name="producttype"  value=" Pressure vessels, seals, gaskets and Materials supplement">
					   Pressure vessels, seals, gaskets and Materials supplement;
					</label>
					<label class="radio"> 
					   <input type="radio" name="producttype"  value="Water treatment products">
						 Water treatment products;
					</label>
					<label class="radio"> 
					   <input type="radio" name="producttype"  value="Biogas power projects">
					   Biogas power projects;
					</label>
					</div>
				</div>
				<div class="space-4"></div>
				<div class="form-group">
					<label for="form-field-select-3"  class="col-sm-2 control-label">Location</label>
					<div  class="col-sm-10">
						<select style="width:300px" class="chosen-select" name="location"
							data-placeholder="Choose a item...">
							<option>Please choose one item</option>
							<option value="Products inquiry and procurement">Products inquiry and procurement</option>
							<option value="Comment and suggestion">Comment and suggestion</option>
							<option value="Cooperation request">Cooperation request</option>
							<option value="Arkansas">Arkansas</option>
							<option value="After sales services"> After sales services</option>
						</select>
					</div>
				</div>
				<div class="space-4"></div>
				<div class="form-group">
					<label for="form-field-8" class="col-sm-2 control-label">Content</label>
					<div class="col-sm-10">
						<textarea class="form-control" name="content" ></textarea>
					</div>
				</div>
				<div class="space-4"></div>
				<div class="form-group">
				    <div class="col-sm-offset-2 col-sm-10">
				      <button type="submit" class="btn btn-primary">send</button>
				      <button  class="btn btn-inverse">reset</button>
				    </div>
				  </div>
			</form>
		</div>
	</div>
	<%@include file="../footer.jsp"%>
</body>
</html>