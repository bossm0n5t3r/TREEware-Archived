<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">
<%@ include file="/common/modal/mail.jsp" %>
$(function(){
	$("li").click(function(){ 
	         var cname = ($(this).attr('class') == 'nav-item') 
	            ? 'nav-item active'
	            : 'nav-item'; 
	         $(this).attr('class', cname); 
	     
		});
	});
</script>
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
						<span style="color:#1d7af3;font-size:110%;align:left"><i class="la la-envelope"></i> 메일</span>
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
		<div style="margin-left:30px">
		<a href="${root}/menu/mail/write.jsp"><button class="btn btn-outline-info" style="width:200px;">
		<i class="la la-edit"></i> &nbsp;메일쓰기</button></a></div><br>
			
			<li class="nav-item">
				<a href="${root}/menu/mail/receivemailbox.jsp">
					<p><i class="la la-mail-reply"></i>받은메일함</p>
				</a>
			</li>
			<li class="nav-item">
				<a href="${root}/menu/mail/sendmailbox.jsp">
					<p><i class="la la-mail-forward"></i>보낸메일함</p>
				</a>
			</li>
			<li class="nav-item">
				<a href="${root}/menu/mail/newmailbox.jsp">
					<p><i class="la la-folder"></i>새메일함1</p>
				</a>
			</li>
			<li class="nav-item">
				<a href="${root}/menu/mail/newmailbox.jsp">
					<p><i class="la la-folder"></i>새메일함2</p>
				</a>
			</li>
			
			<li class="nav-item">
				<a href="${root}/menu/mail/trashmailbox.jsp">
					<i class="la la-trash"></i>휴지통
				</a>
			</li>
			<br>
			<div style="margin-left:30px">
		<button class="btn btn-outline-info" data-toggle="modal" data-target="#addmodal" style="width:130px;">
		<i class="la la-plus-square"></i> &nbsp;메일함 추가</button></div>
		</ul>
	</div>
</div>
  