jQuery(function($) {
	$("#save").click(function() {
	    $.ajax({
	        type : "POST",
	        url : 'edit',
	        data : $("#formId").serialize(),
	        success  : function(data) {
	        	console.log(data);
	        	layer.msg('已操作成功!',{icon:1,time:2000});
	        	if($("#index").val()==0){
	        		setTimeout('history.go(0)', 2000);
	        	}else{
		        	parent.location.reload(); 
		        	layer_close();
	        	}
			}
	    });
	});
})
