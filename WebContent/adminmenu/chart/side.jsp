<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="sidebar">
	<div class="scrollbar-inner sidebar-wrapper">
		<%@ include file="/common/user.jsp" %>
		<!-- 
		<style>
		#menucate:hover{
			background-color:#C3D6E0;
			color:white;
		}
		</style> -->
		<div class="user" id="menucate">
			<div class="info">
				<a class="" data-toggle="collapse" href="#collapseMenu" aria-expanded="true" onmouseover="javascript:changecolor()">
					<span style="height:30px;padding:5px">
						<span style="color:#1d7af3;font-size:110%;align:left"><i class="la la-bar-chart"></i> 통계</span>
				</a>
				<div class="clearfix"></div>
				<div class="collapse in" id="collapseMenu" aria-expanded="true" style="">
					<ul class="nav">
						<li><a href="${root}/menu/home/main.jsp"><span class="link-collapse"><i class="la la-home"> 메인화면</i></span></a></li>
						<li><a href="${root}/menu/address/main.jsp"><span class="link-collapse"><i class="la la-sitemap"> 주소록</i></span></a></li>
						<li><a href="${root}/menu/calendar/main.jsp"><span class="link-collapse"><i class="la la-calendar"> 일정관리</i></span></a></li>
						<li><a href="${root}/menu/sign/main.jsp"><span class="link-collapse"><i class="la la-edit"> 전자결재</i></span></a></li>
						<li><a href="${root}/menu/commute/main.jsp"><span class="link-collapse"><i class="la la-clock-o"> 근태관리</i></span></a></li>
						<li><a href="${root}/menu/board/main.jsp"><span class="link-collapse"><i class="la la-group"> 게시판</i></span></a></li>
					</ul>
				</div>
			</div>
		</div>
		<ul class="nav">
			<li class="nav-item active">
				<a href="${root}/pages/blank.jsp">
					<p>상세메뉴1</p>
				</a>
			</li>
			<li class="nav-item">
				<a href="${root}/pages/blank.jsp">
					<p>상세메뉴2</p>
				</a>
			</li>
			<li class="nav-item">
				<a href="${root}/pages/blank.jsp">
					<p>상세메뉴3</p>
				</a>
			</li>
		</ul>
	</div>
</div>