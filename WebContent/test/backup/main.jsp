<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>트리웨어</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<%@ include file="/common/import.jsp" %>
	<style>
	.content{
		height:1000px;
	}
	.main-panel {
		background: #f2f3f8;
	}
	.main-panel{
		padding: 30px 15px;
	}
	.footer {
		border-top: 1px solid #eee;
		padding: 15px;
		background: #ffffff;
	}
	</style>
</head>
<body>
<div class="wrapper">
		<%@ include file="/common/top.jsp" %>
		<div class="row">
			<div class="col-lg-2">
				<%@ include file="/common/side.jsp" %>
			</div>
			<div class="col-lg-10">
			<div class="main-panel">
			<div class="content">
				<div class="container-fluid">
					<h4 class="page-title">메인화면에 무엇을?</h4>
						<div class="row">
							<!-- 미니카드 -->
							<div class="col-md-3">
								<div class="card card-stats card-warning">
									<div class="card-body ">
										<div class="row">
											<div class="col-5">
												<div class="icon-big text-center">
													<i class="la la-users"></i>
												</div>
											</div>
											<div class="col-7 d-flex align-items-center">
												<div class="numbers">
													<p class="card-category">Visitors</p>
													<h4 class="card-title">1,294</h4>
												</div>
											</div>
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
	</div>
</div>
</body>
</html>