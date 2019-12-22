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
			colNames : [ '学生名字', '学生学号', '学生成绩', '操作' ],
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
				},
				{
					name : 'handle',
					index : 'handle',
					width : 100,
					sortable : false
				}
			],
			pager : "#pager_list_2",
			viewrecords : true,
			caption : "学生成绩信息列表",
			add : true,
			edit : false,
			addtext : 'Add',
			editurl : "/addmedicine",
			hidegrid : false, 
			gridComplete : function() {
				console.log("grid Complete");
				var ids = $("#table_list_2").jqGrid("getDataIDs");
				var bodys = $("#table_list_2").jqGrid("getRowData");
				for (var int = 0; int < ids.length; int++) {
					var id = ids[int];


					var modify = "<a href='#' style='color:#f60' onclick='changedialogshow(" + id + ")'>修改信息</a>"; //这里的onclick就是调用了上面的javascript函数 Modify(id)
					var del = "<a href='#'  style='color:#f60' onclick='deldialog(" + id + ")' >删除</a>";
					if (bodys[int].name == "未分配") {
						del = "";
						modify = "";
					}
					var result = $("#table_list_2").jqGrid("setRowData", id, {
						handle : modify + "&nbsp &nbsp" + del
					});
				}
			}
		});

	//	// Add selection
		//	$("#table_list_2").setSelection(4, true);
		//

	// Setup buttons
	$("#table_list_2").jqGrid('navGrid', '#pager_list_2', {
		edit : false,
		add : true,
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
function deldialog(id) {
//    showdialog("确定要解散此部门吗？","确定","关闭" , function () {
//		del(id);
//    } ,function () {})
    
    deletealert("" , "确定要删除这条信息吗？" , function(){del(id);});
    
    
}
function del(id) {
	var jsondata = {
		"id" : id
	};
	$.ajax({
		url : "/deletemedicine",
		type : "POST",
		data : jsondata,
		success : function(data, stutas) {
			console.log(data);
			if (data == "1") {
				$("#table_list_2").trigger("reloadGrid");
                successalert("" , "信息删除成功!");
			} else if (data == "4") {
                warningalert("" , "不能删除此信息!");
			} else {
                erroralert("" , "出现错误，请重试!");
			}
		},
		error : function() {
			erroralert("" , "出现错误，请重试!");
		}
	});


}
function modify() {
	$.ajax({
		url : "/setmedicine",
		type : "POST",
		data : $("#changefrom").serialize(),
		success : function(data) {
			if (data == 1) {
                 successalert("" , "学生成绩修改完成!");
				$("#table_list_2").trigger("reloadGrid");
				changedialogdismiss();
			} else {
				erroralert("" , "出现错误，请重试!");
			}

		},
		error : function() {
			erroralert("" , "出现错误，请重试!");
		}
	});
}







function changedialogdismiss() {
	$("#changedialog").hide(speed = "slow");
}
function changedialogshow(id) {
	datas = $("#table_list_2").jqGrid("getRowData", id);
	console.log("id:" + id);
	$("#studentId").val(id);
	// $("#deptname").attr("value", datas.name);
	$("#deptname").val(datas.name);
	$("#changedialog").show(speed = "slow");
}