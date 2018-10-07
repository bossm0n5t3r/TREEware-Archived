<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="sidebar">
	<div class="scrollbar-inner sidebar-wrapper">
		<div class="user">
			<div class="photo">
				<img src="${root}/assets/img/profile1.jpg">
			</div>
			<div class="info">
				<a class="" data-toggle="collapse" href="#collapseUser" aria-expanded="true">
					<span>
						김고은 이사
						<span class="user-level">응용 소프트웨어 개발팀</span>
						<span class="caret"></span>
					</span>
				</a>
				<div class="clearfix"></div>
	
				<div class="collapse in" id="collapseUser" aria-expanded="true" style="">
					<ul class="nav">
						<li>
							<a href="#profile">
								<span class="link-collapse">내 정보</span>
							</a>
						</li>
						<li>
							<a href="#edit">
								<span class="link-collapse">사원정보</span>
							</a>
						</li>
						<li>
							<a href="#settings">
								<span class="link-collapse">회사정보</span>
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="user">
			<div class="info">
				<a class="" data-toggle="collapse" href="#collapseMenu" aria-expanded="true">
					<span style="height:30px;padding:5px">
						<span style="color:#1d7af3;font-size:110%;align:left"><i class="la la-calendar"></i> 일정</span>
				</a>
				<div class="clearfix"></div>
				<div class="collapse in" id="collapseMenu" aria-expanded="true" style="">
					<ul class="nav">
						<li><a href="${root}/menu/home/main.jsp"><span class="link-collapse"><i class="la la-home"> 메인화면</i></span></a></li>
						<li><a href="${root}/menu/mail/main.jsp"><span class="link-collapse"><i class="la la-envelope"> 메일</i></span></a></li>
						<li><a href="${root}/menu/address/main.jsp"><span class="link-collapse"><i class="la la-sitemap"> 주소록</i></span></a></li>
						<li><a href="${root}/menu/sign/main.jsp"><span class="link-collapse"><i class="la la-edit"> 전자결재</i></span></a></li>
						<li><a href="${root}/menu/commute/main.jsp"><span class="link-collapse"><i class="la la-clock-o"> 근태</i></span></a></li>
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