jQuery(function($) {
	var oTable1 = $('#hexin-table').dataTable({
		"oLanguage": {  
		      "sProcessing": "处理中...",  
		      "sLengthMenu": "显示 _MENU_ 项结果",  
		      "sZeroRecords": "没有匹配结果",  
		      "sInfo": "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",  
		      "sInfoEmpty": "显示第 0 至 0 项结果，共 0 项",  
		      "sInfoFiltered": "(由 _MAX_ 项结果过滤)",  
		      "sInfoPostFix": "",  
		      "sSearch": "搜索:",  
		      "sUrl": "",  
		      "sEmptyTable": "表中数据为空",  
		      "sLoadingRecords": "载入中...",  
		      "sInfoThousands": ",",  
		      "oPaginate": {  
		          "sFirst": "首页",  
		          "sPrevious": "上页",  
		          "sNext": "下页",  
		          "sLast": "末页"  
		      },  
		      "oAria": {  
		          "sSortAscending": ": 以升序排列此列",  
		          "sSortDescending": ": 以降序排列此列"  
		      }  
		  } ,
		"aoColumns" : [ null,null, null, null, {
			"bSortable" : false
		} ]
	});

	$('table th input:checkbox').on(
			'click',
			function() {
				var that = this;
				$(this).closest('table').find(
						'tr > td:first-child input:checkbox').each(
						function() {
							this.checked = that.checked;
							$(this).closest('tr').toggleClass('selected');
						});

			});

	$('[data-rel="tooltip"]').tooltip({
		placement : tooltip_placement
	});
	function tooltip_placement(context, source) {
		var $source = $(source);
		var $parent = $source.closest('table')
		var off1 = $parent.offset();
		var w1 = $parent.width();

		var off2 = $source.offset();
		var w2 = $source.width();

		if (parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2))
			return 'right';
		return 'left';
	}
})

function add(){
	layer_show("新增","toAdd?index=1",800,550);
}
function edit(id){
	layer_show("修改","toEdit?id="+id,800,550);
}
function upload(id,type){
	layer_show("附件管理","../file/toUpload?type="+parseInt(type)+"&foreignid="+id,800,550);
}
function view(id,title){
		    layer.open({
		      type: 2,
		      title: title,
		      shadeClose: true,
		      shade: false,
		      maxmin: true, //开启最大化最小化按钮
		      area: ['893px', '600px'],
		      content: 'view?id='+id
		});
}
function del(obj,id){
	layer.confirm('删除须谨慎，确认要删除吗？',function(index){
		  $.ajax({
		        type : "POST",
		        url : 'del',
		        data : {"id":id},
		        success  : function(data) {
		        	 $(obj).parents("tr").remove();
		    		 layer.msg('已删除!',{icon:1,time:1000});
				}
		    });
	});
}