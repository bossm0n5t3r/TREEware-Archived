<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/common/import.jsp" %>
<%@ include file="/menu/calendar/import.jsp" %>
<script>
$(document).ready(function(){
	document.getElementById("menu1").setAttribute("class", "nav-item");
	document.getElementById("menu2").setAttribute("class", "nav-item");
	document.getElementById("menu3").setAttribute("class", "nav-item active");
});
</script>
</head>
<body>
	<div class="wrapper">
		<%@ include file="/common/top.jsp" %>
		<%@ include file="side.jsp" %>
			<div class="main-panel">
				<div class="content">
					<div class="container-fluid">
						<div align="center" style="margin:30px 0;height:1100px">
							<div class="col-md-11">
								<div class="card" align="center">
									<div class="card-header">
										<div class="card-title" align="left">일정등록</div>
									</div>
									<div class="card-body">
										<form class="form" method="POST" id="registerMemberForm" name="registerMemberForm" action="">
											<input type="hidden" name="act" value="register">
												<div align="center">
													<div id="info" class="col-md-10">
														<div class="row">
															<div style="width:100%;margin:5px;border-radius:8px">
																<div class="row" style="margin:5px">
																	<div style="width:100%" class="box-group">
																		<input name="title" id="title" type="text" class="mainbox" placeholder="일정제목" required>
																	</div>
																	<div style="width:25%" class="box-group">
																		<table style="width:100%">
																		<tr>
																			<td><input type="text" name="dptname" id="dptname" class="mainbox" style="border:0" placeholder="시작일" required readonly="readonly">
																			<input type="hidden" id="dptcode" name="dptcode">
																			</td>
																			<td align="right">
																				<input name="dept" id="dept" data-toggle="modal" data-target="#departments" class="btn btn-primary btn-sm" type="button" value="찾아보기">
																			</td>
																		</tr>
																		</table>
																	</div>
																	<div style="width:25%" class="box-group">
																		<table style="width:100%">
																		<tr>
																			<td><input type="text" name="dptname" id="dptname" class="mainbox" style="border:0" placeholder="시작시간" required readonly="readonly">
																			<input type="hidden" id="dptcode" name="dptcode">
																			</td>
																			<td align="right">
																				<input name="dept" id="dept" data-toggle="modal" data-target="#departments" class="btn btn-primary btn-sm" type="button" value="찾아보기">
																			</td>
																		</tr>
																		</table>
																	</div>
																	<div style="width:25%" class="box-group">
																		<table style="width:100%">
																		<tr>
																			<td><input type="text" name="dptname" id="dptname" class="mainbox" style="border:0" placeholder="종료일" required readonly="readonly">
																			<input type="hidden" id="dptcode" name="dptcode">
																			</td>
																			<td align="right">
																				<input name="dept" id="dept" data-toggle="modal" data-target="#departments" class="btn btn-primary btn-sm" type="button" value="찾아보기">
																			</td>
																		</tr>
																		</table>
																	</div>
																	<div style="width:25%" class="box-group">
																		<table style="width:100%">
																		<tr>
																			<td><input type="text" name="dptname" id="dptname" class="mainbox" style="border:0" placeholder="종료시간" required readonly="readonly">
																			<input type="hidden" id="dptcode" name="dptcode">
																			</td>
																			<td align="right">
																				<input name="dept" id="dept" data-toggle="modal" data-target="#departments" class="btn btn-primary btn-sm" type="button" value="찾아보기">
																			</td>
																		</tr>
																		</table>
																	</div>
																	<div style="width:100%" class="box-group">
																		<textarea style="width:100%" rows="10"></textarea>
																	</div>
																	
																</div>
															</div>
														</div>
													</div>
												</div>
											</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
		<%@ include file="/common/footer.jsp" %>
		</div>
	</div>
</body>
</html>