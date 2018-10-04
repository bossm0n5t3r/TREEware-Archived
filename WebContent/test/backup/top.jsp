<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<style>
.main-header{

}
.top-logo{
	align:center;
	height:40px;
	padding:25px;
}
.top-menu{
	height:40px;
	margin:10px;
}
.top-dropmenu{
	text-align:right;
	height:40px;
	margin:20px;
}
#top-dropbtn{
	width:100%;
	text-align:right;
}
#top-dropitem{
	width:100%;
	text-align:left;
}
</style>
    
<div class="main-header">
	<div class="row">
		<div class="col-lg-2" align="center">
			<div class="top-logo"><a href="${root}/pages/common/main.jsp">TREE WARE</a></div>
		</div>
		<div class="col-lg-8">
			<nav class="navbar navbar-expand-sm">
			  <ul class="navbar-nav">
			    <li class="nav-item"><div class="top-menu"><a class="nav-link" href="#">메일</a></div></li>
			    <li class="nav-item"><div class="top-menu"><a class="nav-link" href="#">주소록</a></div></li>
			    <li class="nav-item"><div class="top-menu"><a class="nav-link" href="#">일정관리</a></div></li>
			    <li class="nav-item"><div class="top-menu"><a class="nav-link" href="#">전자결재</a></div></li>
			    <li class="nav-item"><div class="top-menu"><a class="nav-link" href="#">근태관리</a></div></li>
			    <li class="nav-item"><div class="top-menu"><a class="nav-link" href="#">게시판</a></div></li>
			  </ul>
			</nav>
		</div>
		<div class="col-lg-2">
			<div class="top-dropmenu">
				<div class="dropdown">
					<button id="top-dropbtn" type="button" class="btn btn-inform dropdown-toggle" data-toggle="dropdown">
						바로가기
					</button>
					<div id="top-dropitem" class="dropdown-menu">
						<a class="dropdown-item" href="#">Link 1</a>
						<a class="dropdown-item" href="#">Link 1</a>
						<a class="dropdown-item" href="${root}/index.jsp">로그아웃</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>