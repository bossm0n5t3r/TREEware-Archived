<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/common/import.jsp" %>
</head>
<body>
<!-- 			https://www.w3schools.com/bootstrap4/bootstrap_navs.asp -->
	<div class="wrapper">
		<%@ include file="/common/top.jsp" %>
		<%@ include file="side.jsp" %>
		<div class="main-panel">
		<div class="content">
			<div class="container-fluid">
				<div class="col-md-12">
					<div class="card">
						<div class="card-header">
							<div class="card-title">결재양식관리</div>
						</div>
						<div class="card-body">
							
								<div class="row">
									<div class="col-sm-2">
											<span>결재양식폴더목록</span>
											<hr>
											<div class="card-sub">
												<
												<button type="button" class="btn btn-default btn-sm">폴더추가</button>
												<button type="button" class="btn btn-default btn-sm">수정</button>
												<button type="button" class="btn btn-default btn-sm">삭제</button>
										
												<div class="panel">
												<br>
												폴더트리<br>
												폴더트리<br>
												폴더트리<br>
												폴더트리<br>
												폴더트리<br>
												</div>
											</div>
									</div>
									<div class="col-sm-10">
<!-- 										<div class="buttonmenu" align="right"> -->
<!-- 											<button type="button" class="btn btn-default">작성하기</button> -->
<!-- 											<button type="button" class="btn btn-default btn-border">서류삭제</button> -->
<!-- 											<button type="button" class="btn btn-default btn-border">순서바꾸기</button> -->
<!-- 											<button type="button" class="btn btn-default btn-border">일괄설정</button> -->
<!-- 										</div> -->
										<div class="panel">
										<!-- 결재서류 리스트 -->
											<table class="table">
												<thead>
													<tr>
														<th>
															<div class="form-check">
																<label class="form-check-label">
																	<input class="form-check-input  select-all-checkbox" type="checkbox" data-select="checkbox" data-target=".task-select">
																	<span class="form-check-sign"></span>
																</label>
															</div>
														</th>
														<th>서류제목</th>
														<th>제출인</th>
														<th>처리상황</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>
															<div class="form-check">
																<label class="form-check-label">
																	<input class="form-check-input task-select" type="checkbox">
																	<span class="form-check-sign"></span>
																</label>
															</div>
														</td>
														<td>9월 회식비용 영수증</td>
														<td>머신러닝팀 김지훈 이사</td>
														<td class="td-actions text-right">
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
													<tr>
														<td>
															<div class="form-check">
																<label class="form-check-label">
																	<input class="form-check-input task-select" type="checkbox">
																	<span class="form-check-sign"></span>
																</label>
															</div>
														</td>
														<td>사내체육대회 장소입찰 결재</td>
														<td>경영지원팀 강수민 이사</td>
														<td class="td-actions text-right">
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
													<tr>
														<td>
															<div class="form-check">
																<label class="form-check-label">
																	<input class="form-check-input task-select" type="checkbox">
																	<span class="form-check-sign"></span>
																</label>
															</div>
														</td>
														<td>후이즈 도메인 입찰서류</td>
														<td>서버개발팀 박윤민 이사</td>
														<td class="td-actions text-right">
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
													<tr>
														<td>
															<div class="form-check">
																<label class="form-check-label">
																	<input class="form-check-input task-select" type="checkbox">
																	<span class="form-check-sign"></span>
																</label>
															</div>
														</td>
														<td>사원 개인 노트북지원 예상견적서</td>
														<td>프론트엔드팀 강혜인 이사</td>
														<td class="td-actions text-right">
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
												</tbody>
											</table>
										<!-- 결재서류 리스트 끝 -->
										</div>
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