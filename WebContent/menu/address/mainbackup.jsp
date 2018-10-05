<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/common/import.jsp" %>
<%@ include file="/menu/address/import.jsp" %>
</head>
<body>
<%@ include file="/common/top.jsp" %>
<%@ include file="side.jsp" %>
<div class="main-panel">
	<div class="content">
		<div class="container-fluid">
			<div class="col-md-12">
				<div class="card">
					<div class="card-header">
						<div class="card-title">주소록</div>
					</div>
					<div class="card-body">
						<div class="row">
								<div class="col-md-3">
									<div class="card-sub" style="width:80%;padding:20px;margin:0 10px;">
										<table>
										<tr>
											<td>사내연락망</td>
										</tr>
										<tr>
											<td>
											<form>
											
											<input type="text" placeholder="검색어입력">
											</form>
											</td>
<!-- 										<td width="33%"><button type="button" class="btn btn-default btn-sm" style="width:100%">폴더추가</button></td> -->
<!-- 										<td width="33%"><button type="button" class="btn btn-sm" style="width:100%">수정</button></td> -->
<!-- 										<td width="33%"><button type="button" class="btn btn-sm" style="width:100%">삭제</button></td> -->
										</tr>
										</table>
										<div style="width:170px">
										<hr><ul id="tree" class="ztree" style="width:260px; overflow:auto;"></ul>
										</div>
									</div>
								</div>
								<div class="col-md-9" style="padding:0 40px 0 0 ">
								<!-- 결재서류 리스트 -->
								<!-- <IFRAME ID="testIframe" Name="testIframe" FRAMEBORDER=0 SCROLLING=AUTO width=100%  height=600px SRC=""></IFRAME> -->
								 	<div class="buttonmenu" align="right" style="margin:0 0 10px 0">
										<button type="button" class="btn btn-link">선택삭제</button>
										<button type="button" class="btn btn-link">전체삭제</button>
									</div>
									<table id="listtable" style="width:100%;">
										<thead>
											<tr>
												<th width="10%">
													<div class="form-check" >
														<label class="form-check-label">
															<input class="form-check-input  select-all-checkbox" type="checkbox" data-select="checkbox" data-target=".task-select">
															<span class="form-check-sign"></span>
														</label>
													</div>
												</th>
												<th width="15%">이름</th>
												<th width="15%">휴대폰</th>
												<th width="20%">이메일</th>
												<th width="10%">부서</th>
												<th width="10%">회사전화</th>
												<th width="7%">그룹</th>
												<th width="3%">수정삭제</th>
											</tr>
										</thead>
										<tbody>
											<% for(int i=0; i<10 ; i++){ %>
											<tr>
												<td>
													<div class="form-check">
														<label class="form-check-label">
															<input class="form-check-input task-select" type="checkbox">
															<span class="form-check-sign"></span>
														</label>
													</div>
												</td>
												<td>김하늘</td>
												<td>010-0000-0000</td>
												<td>skykim@gmail.com</td>
												<td>영업1팀</td>
												<td>070-777</td>
												<td>프로젝트1</td>
												<td class="td-actions text-left">
													<div class="form-button-action">
														<button type="button" data-toggle="tooltip" title="Edit Task" class="btn btn-link <btn-simple-primary">
															<i class="la la-edit"></i>
														</button>
														<button type="button" data-toggle="tooltip" title="Remove" class="btn btn-link btn-simple-danger">
															<i class="la la-times"></i>
														</button>
													</div>
												</td>
											</tr>
											<%} %>
										</tbody>
									</table>
								<!-- 결재서류 리스트 끝 -->
								<br>
									<div style="float:right">
									<input type="text">
									<ul class="pagination pagination-sm">
									  <li><a href="#">1</a></li>
									  <li><a href="#">2</a></li>
									  <li><a href="#">3</a></li>
									  <li><a href="#">4</a></li>
									  <li><a href="#">5</a></li>
									</ul>
									</div>
								<br>
								<br>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<%@ include file="/common/footer.jsp" %>
</div>
</body>
</html>