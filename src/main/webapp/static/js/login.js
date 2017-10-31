$(document).ready(function() {
	
//回车登录
$(document).keydown(function(e){
	if(e.keyCode == 13) {
		$('#login_submit').click();
	}
});

$('#login_submit').click(function() {    
		var result=true;
		if($("#username").val().length==0){
			$("#err_name").text("用户名不能为空！");
			result=false;
		}else{
			$("#err_name").text("");
		}    
		if($("#password").val().length==0){
			$("#err_pwd").text("密码不能为空！");
			result=false;
		}else{
			$("#err_pwd").text("");
		}       
		if(result){
		      $.ajax({  
					type: "POST",  
					async: true,
					url: "doLogin",  
					data:$('#loginform').serialize(),
					dataType:'text',
					success:function (data){
							if(data==0){
								$("#err_pwd").text("密码错误!");
								$("#code").val('');
							}else if(data==1){
								 window.location.href = 'backend/main';
							}
						}
					});
		}
	});

});
