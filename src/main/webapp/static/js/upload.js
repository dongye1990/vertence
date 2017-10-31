 $(function ($) {
            $('#attrFile').ace_file_input({
                btn_choose: 'Choose',
                btn_change: 'Change',
                droppable: false,
                onchange: null,
                thumbnail: false
              });
            
         	$("#save").click(function() {
        	    $.ajaxFileUpload({
        	        type : "POST",
        	        url : 'upload?type='+$("#type").val()+'&foreignid='+$("#foreignid").val(),
        			fileElementId : 'attrFile', //文件选择框的id属性
        	        success  : function(data) {
        	        	layer.msg('success!',{icon:1,time:2000});
        	        	setTimeout('window.location.href=window.location.href', 2000 );
        			}
        	    });
        	});
            
        });
 function del(id){
		layer.confirm('附件删除须谨慎，确认要删除吗？',function(index){
			  $.ajax({
			        type : "POST",
			        url : 'del',
			        data : {"id":id},
			        success  : function(data) {
			        	layer.msg('success!',{icon:1,time:2000});
        	        	setTimeout('window.location.href=window.location.href', 2000 );
					}
			    });
		});
	 
 }
