<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${root}/assets/css/zTreeStyle.css" type="text/css">
<style>
#listtable th, #listtable td{
    padding: 8px;
    text-align: left;
    border-top: 1px solid #eee;
}
</style>
<script type="text/javascript" src="${root}/assets/js/plugin/jquery-ztree/jquery.ztree.core-3.5.js"></script>
<script type="text/javascript" >
  
	var zTree;
	var demoIframe;

	var setting = {
		view: {
			dblClickExpand: false,
			showLine: true,
			selectedMulti: false
		},
		data: {
			simpleData: {
				enable:true,
				idKey: "id",
				pIdKey: "pId",
				rootPId: ""
			}
		},
		callback: {
			beforeClick: function(treeId, treeNode) {
				var zTree = $.fn.zTree.getZTreeObj("tree");
				if (treeNode.isParent) {
					zTree.expandNode(treeNode);
					return false;
				} else {
					demoIframe.attr("src",treeNode.file + ".html");
					return true;
				}
			}
		}
	};

	var zNodes = [
		{id:1, pId:0, name:"전체보기", open:false},
		{id:101, pId:1, name:"결재파일1", file:"test.jsp"},
		{id:102, pId:1, name:"결재파일2", file:"core/standardData"},
		{id:103, pId:1, name:"결재파일3", file:"core/standardData"},
		{id:104, pId:1, name:"결재파일4", file:"core/standardData"},
		{id:105, pId:1, name:"결재파일5", file:"core/standardData"},

		{id:2, pId:0, name:"점심뭐먹지", open:false},
		{id:201, pId:2, name:"연차신청1", file:"excheck/checkbox"},
		{id:202, pId:2, name:"연차신청2", file:"excheck/checkbox"},
		{id:203, pId:2, name:"연차신청3", file:"excheck/checkbox"},
		{id:204, pId:2, name:"연차신청4", file:"excheck/checkbox"},

		{id:3, pId:0, name:"따끈한국물", open:false},
		{id:301, pId:3, name:"설렁탕", file:"exedit/drag"},
		{id:301, pId:3, name:"순대국", file:"exedit/drag"},
		{id:301, pId:3, name:"쌀국수", file:"exedit/drag"},
		{id:301, pId:3, name:"멸치국수", file:"exedit/drag"},

		{id:4, pId:0, name:"내일은토요일", open:false},
		{id:401, pId:4, name:"신난다", file:"bigdata/common"},
		{id:402, pId:4, name:"즐거운", file:"bigdata/diy_async"},
		{id:403, pId:4, name:"토요일", file:"bigdata/page"},

// 		{id:5, pId:0, name:"Multi-functional", open:false},
// 		{id:501, pId:5, name:"Freeze the Root Node", file:"super/oneroot"},
// 		{id:502, pId:5, name:"Click to Expand Node", file:"super/oneclick"},
// 		{id:503, pId:5, name:"Keep Single Path", file:"super/singlepath"},
// 		{id:504, pId:5, name:"Adding Custom DOM", file:"super/diydom"},
// 		{id:505, pId:5, name:"Checkbox / Radio Coexistence", file:"super/checkbox_radio"},
// 		{id:506, pId:5, name:"Left Menu", file:"super/left_menu"},
// 		{id:513, pId:5, name:"OutLook Style", file:"super/left_menuForOutLook"},
//         {id:515, pId:5, name:"Awesome Style", file:"super/awesome"},
//         {id:514, pId:5, name:"Metro Style", file:"super/metro"},
// 		{id:507, pId:5, name:"Drop-down Menu", file:"super/select_menu"},
// 		{id:509, pId:5, name:"Drop-down Menu with checkbox", file:"super/select_menu_checkbox"},
// 		{id:510, pId:5, name:"Drop-down Menu with radio", file:"super/select_menu_radio"},
// 		{id:508, pId:5, name:"Right-click Menu", file:"super/rightClickMenu"},
// 		{id:511, pId:5, name:"Drag With Other DOMs", file:"super/dragWithOther"},
// 		{id:512, pId:5, name:"Expand All Nodes with Async", file:"super/asyncForAll"},

// 		{id:6, pId:0, name:"Other Extension Package", open:false},
// 		{id:601, pId:6, name:"hide ordinary node", file:"exhide/common"},
// 		{id:602, pId:6, name:"hide with checkbox mode", file:"exhide/checkbox"},
// 		{id:603, pId:6, name:"hide with radio mode", file:"exhide/radio"}
	];

	$(document).ready(function(){
		var t = $("#tree");
		t = $.fn.zTree.init(t, setting, zNodes);
		demoIframe = $("#testIframe");
		demoIframe.bind("load", loadReady);
		var zTree = $.fn.zTree.getZTreeObj("tree");
		zTree.selectNode(zTree.getNodeByParam("id", 101));
	
	});

	function loadReady() {
		var bodyH = demoIframe.contents().find("body").get(0).scrollHeight,
		htmlH = demoIframe.contents().find("html").get(0).scrollHeight,
		maxH = Math.max(bodyH, htmlH), minH = Math.min(bodyH, htmlH),
		h = demoIframe.height() >= maxH ? minH:maxH ;
		if (h < 530) h = 530;
		demoIframe.height(h);
	}
  
</script>