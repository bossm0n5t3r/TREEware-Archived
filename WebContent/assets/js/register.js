function submit(){
//		 $("#successMsg").modal();
		 document.registerMemberForm.action = "/treeware/adminmember";
		 document.registerMemberForm.submit();
	}
function goback(){
		location.href="${root}/index.jsp";
	}
	
$(document).ready(function (){
		var dt = new Date();
		var time = dt.getTime();
		var empsq;
		empsq = "TREE"+time;
		document.getElementById("empnum").value = empsq;
		document.getElementById("id").value = empsq;
		document.getElementById("pw").value = "1234";
		
		var upload = document.getElementById('photo'),
	    	photoimg = document.getElementById('photoimg');

		photoimg.src = "assets/img/photo.jpg";
	 
		upload.onchange = function (e) {
		  e.preventDefault();
		  var file = upload.files[0],
		      reader = new FileReader();
		  reader.onload = function (event) {  
			var img = new Image(); 
		    img.src = event.target.result;
		    if (img.width > 560) {
		      img.width = 560;
		    }
		    photoimg.src = img.src;
		  };
		  reader.readAsDataURL(file);
	  return false;
	};
});

function hypen(str) {
	var x = str
	var tmp = "";

	if (x.length > 3 && x.length <= 7) {
		tmp += x.substr(0, 3);
		tmp += '-';
		if(x.length>5){
			tmp += x.substr(4,x.length);
		} else {			
			tmp += x.substr(3);
		}
		return tmp;
	} else if (x.length > 8) {
		tmp += x.substr(0, 8);
		tmp += '-';
		if(x.length>9){
			tmp += x.substr(9,x.length);
		} else {			
			tmp += x.substr(8);
		}
		
		return tmp;
	}
	return x;
}

function hypen33(str) {
	var x = str
	var tmp = "";

	if (x.length > 3 && x.length <= 7) {
		tmp += x.substr(0, 3);
		tmp += '-';
		tmp += x.substr(3);
		return tmp;
		
	} else if (x.length > 7) {
		tmp += x.substr(0, 3);
		tmp += '-';
		tmp += x.substr(3, 4);
		tmp += '-';
		tmp += x.substr(7);
		return tmp;
	}
	return x;
}
//콤마풀기
function unhypen(str) {
	var x = str
	var tmp = "";

	if (x.length < 4 && x.length <= 8) {
		tmp += x.substr(0, 3);
		tmp += '-';
		tmp += x.substr(3);
		
		return tmp;
		
	} else if (x.length > 7) {
		tmp += x.substr(0, 3);
		tmp += '-';
		tmp += x.substr(3, 4);
		tmp += '-';
		tmp += x.substr(7);
		return tmp;
	}
	return x;
}
 
//값 입력시 콤마찍기
function inputCellPhone(obj) {
    obj.value = hypen(obj.value);
}