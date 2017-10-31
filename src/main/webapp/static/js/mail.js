 $(function ($) {
	 $("#mailForm").validate({
		    submitHandler:function(form){
		        $.ajax({
			        type : "POST",
			        url : 'mainSend',
			        data : $("#mailForm").serialize(),
			        success  : function(data) {
			        	console.log("##########");
			        	console.log(data);
			        	layer.msg('success!',{icon:1,time:2000});
//			        	setTimeout('history.go(0)', 3000 );
//			        	setTimeout('parent.location.reload()', 2000 );
					}
			    });
	        } ,
		    rules: {
		    	name: "required",
		    	country: "required",
		    	city: "required",
		    	companyName: "required",
		    	gender: "required",
		    	producttype: "required",
		      email: {
		        required: true,
		        email: true
		      },
		      content: {
		          required: true,
		          minlength: 30
		        }
		    }
	 })
 })
