<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="sidebar">
<div class="scrollbar-inner sidebar-wrapper">
	<div class="user">
		<div class="photo">
			<img src="${root}/assets/img/profile1.jpg">
		</div>
		<div class="info">
			<a class="" data-toggle="collapse" href="#collapseExample" aria-expanded="true">
				<span>
					김고은 이사
					<span class="user-level">응용 소프트웨어 개발팀</span>
					<span class="caret"></span>
				</span>
			</a>
			<div class="clearfix"></div>

			<div class="collapse in" id="collapseExample" aria-expanded="true" style="">
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
	<ul class="nav">
		<li class="nav-item active">
			<a href="${root}/pages/blank.jsp">
				<i class="la la-dashboard"></i>
				<p>회사공지</p>
				<span class="badge badge-count">5</span>
			</a>
		</li>
		<li class="nav-item">
			<a href="components.html">
				<i class="la la-table"></i>
				<p>메뉴2</p>
				<span class="badge badge-count">14</span>
			</a>
		</li>
		<li class="nav-item">
			<a href="forms.html">
				<i class="la la-keyboard-o"></i>
				<p>메뉴3</p>
				<span class="badge badge-count">50</span>
			</a>
		</li>
		<li class="nav-item">
			<a href="tables.html">
				<i class="la la-th"></i>
				<p>메뉴4</p>
				<span class="badge badge-count">6</span>
			</a>
		</li>
		<li class="nav-item">
			<a href="notifications.html">
				<i class="la la-bell"></i>
				<p>메뉴5</p>
				<span class="badge badge-success">3</span>
			</a>
		</li>
		<li class="nav-item">
			<a href="typography.html">
				<i class="la la-font"></i>
				<p>메뉴6</p>
				<span class="badge badge-danger">25</span>
			</a>
		</li>
		<li class="nav-item">
			<a href="icons.html">
				<i class="la la-fonticons"></i>
				<p>메뉴7</p>
				<span class="badge badge-count">3</span>
			</a>
		</li>
		<!-- <li class="nav-item update-pro">
			<button  data-toggle="modal" data-target="#modalUpdate">
				<i class="la la-hand-pointer-o"></i>
				<p>Update To Pro</p>
			</button>
		</li> -->
		</ul>
	</div>
</div>