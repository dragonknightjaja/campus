$(function() {
	$("#changesubmit").click(function() {
		modify();
	});


	console.log("hello");
	$.jgrid.defaults.styleUI = 'Bootstrap';

	$("#table_list_2").jqGrid(
		{
			url : "/medicinelist",
			datatype : "json",
			mtype : "POST",
			height : "100%",
			autowidth : true,
            jsonReader: {
                root:"dataList",
                page:"currentPage",
                total:"totalPage",          //   很重要 定义了 后台分页参数的名字。
                records:"totalCount"
            },
            rownumbers : true,        // 必须为true
			shrinkToFit : true,
			rowNum : 10,
			rowList : [ 10, 20, 30 ],
			colNames : [ '学生名字', '学生学号', '学生成绩'],
			colModel : [
				{
					name : 'name',
					index : 'name',
					editable : true,
					width : 90
				},
				{
					name : 'number',
					index : 'number',
					editable : true,
					width : 90
				},
				{
					name : 'manufacturer',
					index : 'manufacturer',
					editable : true,
					width : 90
				}
			],
			pager : "#pager_list_2",
			viewrecords : true,
			caption : "学生成绩信息列表",
			add : false,
			edit : false,
			hidegrid : false, 
			gridComplete : function() {
				console.log("grid Complete");
			}
		});

	//	// Add selection
		//	$("#table_list_2").setSelection(4, true);
		//

	// Setup buttons
	$("#table_list_2").jqGrid('navGrid', '#pager_list_2', {
		edit : false,
		add : false,
		del : false,
		search : false
	}, {
		height : 300,
		reloadAfterSubmit : true
	});


	$(window).bind('resize', function() {
		var width = $('.jqGrid_wrapper').width();
		$('#table_list_2').setGridWidth(width);
	});


});

function changedialogdismiss() {
	$("#changedialog").hide(speed = "slow");
}
function changedialogshow(id) {
	datas = $("#table_list_2").jqGrid("getRowData", id);
	console.log("id:" + datas.id);
	$("#deptid").val(id);
	// $("#deptname").attr("value", datas.name);
	$("#deptname").val(datas.name);
	$("#changedialog").show(speed = "slow");
}