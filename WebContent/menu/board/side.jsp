<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="sidebar">
	<div class="scrollbar-inner sidebar-wrapper">
		<%@ include file="/common/user.jsp" %>
		<div class="user" id="menucate">
			<div class="info">
				<a class="" data-toggle="collapse" href="#collapseMenu" aria-expanded="true" onmouseover="javascript:changecolor()">
					<span style="height:30px;padding:5px">
						<span style="color:#1d7af3;font-size:110%;align:left"><i class="la la-group"></i> 게시판</span>
					</span>
				</a>
				<div class="clearfix"></div>
				<div class="collapse in" id="collapseMenu" aria-expanded="true" style="">
					<ul class="nav">
						<li><a href="${root}/menu/home/main.jsp"><span class="link-collapse"><i class="la la-home"> 메인화면</i></span></a></li>
						<li><a href="${root}/menu/mail/main.jsp"><span class="link-collapse"><i class="la la-envelope"> 메일</i></span></a></li>
						<li><a href="${root}/menu/address/main.jsp"><span class="link-collapse"><i class="la la-sitemap"> 주소록</i></span></a></li>
						<li><a href="${root}/menu/calendar/main.jsp"><span class="link-collapse"><i class="la la-calendar"> 일정관리</i></span></a></li>
						<li><a href="${root}/menu/commute/main.jsp"><span class="link-collapse"><i class="la la-clock-o"> 근태관리</i></span></a></li>
						<li><a href="${root}/menu/board/main.jsp"><span class="link-collapse"><i class="la la-group"> 게시판</i></span></a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="user" id="menucate">
			<div id="board1" class="info">
				<a class="" data-toggle="collapse" href="#collapseBoard1" aria-expanded="true" onmouseover="javascript:changecolor()">
					<span style="height:30px;padding:5px 5px 0 5px">
						<span style="color:#555;font-size:110%;align:left;font-weight:light">공지 게시판</span>
					</span>
				</a>
				<div class="clearfix"></div>
				<div class="collapse in" id="collapseBoard1" aria-expanded="true" style="">
					<ul class="nav">
						<li class="li-sm"><a href="${root}/menu/home/main.jsp"><span class="link-collapse"><i class="la la-bullhorn"> 전사 공지</i></span></a></li>
						<li class="li-sm"><a href="${root}/menu/home/main.jsp"><span class="link-collapse"><i class="la la-calendar"> 주간 식단표</i></span></a></li>
						<li class="li-lg"><span class="link-collapse" style="color:black;margin:10px 0"><mark>오피스 소식</mark></span></li>
						<li class="li-sm"><a href="${root}/menu/home/main.jsp"><span class="link-collapse"><i class="la la-globe"> 이주의 IT뉴스</i></span></a></li>
						<li class="li-sm"><a href="${root}/menu/home/main.jsp"><span class="link-collapse"><i class="la la-globe"> 트리웨어 소식 </i></span></a></li>
						<li class="li-lg"><span class="link-collapse" style="color:black;margin:10px 0"><mark>사내 이벤트</mark></span></li>
						<li class="li-sm"><a href="${root}/menu/home/main.jsp"><span class="link-collapse"><i class="la la-calendar"> 사진공모전(-10/30)</i></span></a></li>
						<li class="li-sm"><a href="${root}/menu/home/main.jsp"><span class="link-collapse"><i class="la la-calendar"> 이달의직원투표(-10/30)</i></span></a></li>
					</ul>
					<br>
				</div>
			</div>
			<div id="board2" class="info">
				<a class="" data-toggle="collapse" href="#collapseBoard2" aria-expanded="true" onmouseover="javascript:changecolor()">
					<span style="height:30px;padding:5px">
						<span style="color:#555;font-size:110%;align:left">부서별 게시판</span>
					</span>
				</a>
				<div class="clearfix"></div>
				<div class="collapse in" id="collapseBoard2" aria-expanded="true" style="">
					<ul class="nav">
						<li class="li-sm"><a href="${root}/menu/home/main.jsp"><span class="link-collapse"><i class="la la-bullhorn"> 전사 공지</i></span></a></li>
						<li class="li-sm"><a href="${root}/menu/home/main.jsp"><span class="link-collapse"><i class="la la-calendar"> 주간 식단표</i></span></a></li>
						<li class="li-lg"><span class="link-collapse" style="color:black;margin:10px 0"><mark>오피스 소식</mark></span></li>
						<li class="li-sm"><a href="${root}/menu/home/main.jsp"><span class="link-collapse"><i class="la la-globe"> 이주의 IT뉴스</i></span></a></li>
						<li class="li-sm"><a href="${root}/menu/home/main.jsp"><span class="link-collapse"><i class="la la-globe"> 트리웨어 소식 </i></span></a></li>
						<li class="li-lg"><span class="link-collapse" style="color:black;margin:10px 0"><mark>사내 이벤트</mark></span></li>
						<li class="li-sm"><a href="${root}/menu/home/main.jsp"><span class="link-collapse"><i class="la la-calendar"> 사진공모전(-10/30)</i></span></a></li>
						<li class="li-sm"><a href="${root}/menu/home/main.jsp"><span class="link-collapse"><i class="la la-calendar"> 이달의직원투표(-10/30)</i></span></a></li>
					</ul>
				</div>
			</div>
			<div id="board3" class="info">
				<a class="" data-toggle="collapse" href="#collapseBoard3" aria-expanded="true" onmouseover="javascript:changecolor()">
					<span style="height:30px;padding:5px">
						<span style="color:#555;font-size:110%;align:left">커뮤니티</span>
					</span>
				</a>
				<div class="clearfix"></div>
				<div class="collapse in" id="collapseBoard3" aria-expanded="true" style="">
					<ul class="nav">
						<li class="li-sm"><a href="${root}/menu/home/main.jsp"><span class="link-collapse"><i class="la la-bullhorn"> 전사 공지</i></span></a></li>
						<li class="li-sm"><a href="${root}/menu/home/main.jsp"><span class="link-collapse"><i class="la la-calendar"> 주간 식단표</i></span></a></li>
						<li class="li-lg"><span class="link-collapse" style="color:black;margin:10px 0"><mark>오피스 소식</mark></span></li>
						<li class="li-sm"><a href="${root}/menu/home/main.jsp"><span class="link-collapse"><i class="la la-globe"> 이주의 IT뉴스</i></span></a></li>
						<li class="li-sm"><a href="${root}/menu/home/main.jsp"><span class="link-collapse"><i class="la la-globe"> 트리웨어 소식 </i></span></a></li>
						<li class="li-lg"><span class="link-collapse" style="color:black;margin:10px 0"><mark>사내 이벤트</mark></span></li>
						<li class="li-sm"><a href="${root}/menu/home/main.jsp"><span class="link-collapse"><i class="la la-calendar"> 사진공모전(-10/30)</i></span></a></li>
						<li class="li-sm"><a href="${root}/menu/home/main.jsp"><span class="link-collapse"><i class="la la-calendar"> 이달의직원투표(-10/30)</i></span></a></li>
					</ul>
				</div>
			</div>
		</div>
		<ul class="nav">
			<li class="nav-item">
				<a href="${root}/pages/blank.jsp">
					<p>게시판 설정</p>
				</a>
			</li>
		</ul>
	</div>
</div>