<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
#liveclock{
font-size:400%;
margin:40px 0;
}
</style>
	<div class="card" align="center">
		<div class="card-header">
			<div class="card-title" align="left">근무상태</div>
		</div>
		<div id="clockbtn" style="width:80%;margin:10px 0">
			<ul class="nav nav-pills nav-justified">
			  <li class="nav-item">
			    <a class="nav-link" href="#">출근하기</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="#">외근가기</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="#">복귀하기</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link active" href="#">퇴근하기</a>
			  </li>
			</ul>
		</div>
		<!-- 시계 -->
		<span id="liveclock"></span>
		<!-- 시계끝 -->
		
		<div id="clockstatus" style="width:80%">
			<table class="table" style="width:100%;text-align:center">
				<tr>
					<th colspan="2" width="100%" style="text-align:center">2018년 10월 07일 일요일</th>
				</tr>
				<tr>
					<td width="30%">출근</td>
					<td width="90%">08:00</td>
				</tr>
				<tr>
					<td>외근</td>
					<td>11:00 - 13:00 사내운동대회참석</td>
				</tr>
				<tr>
					<td>복귀</td>
					<td>13:30</td>
				</tr>
				<tr>
					<td>퇴근</td>
					<td>16:00</td>
				</tr>
				
			</table>
		</div>
		<!-- JavaScript Includes -->
		<script src="${root}/assets/js/plugin/clock/clock.js"></script>
	</div>
