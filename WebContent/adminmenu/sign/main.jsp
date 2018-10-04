<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/common/import.jsp" %>
</head>
<body>
	<div class="wrapper">
		<%@ include file="/common/top.jsp" %>
		<%@ include file="side.jsp" %>
		<div class="main-panel">
			<div class="content">
				<div class="container-fluid" style="height:1100px">
					결재 양식 관리<br>
					<hr><br>
					<div class="container-fluid">
						<table class="table" width="100%">
							<tr>
								<td colspan="2">결재 양식 관리</td>
							</tr>
							<tr>
								<td width="30%" >결재양식 폴더 목록<br>
								<hr><br>
								<input type="button" value="폴더추가">
								<input type="button" value="수정">
								<input type="button" value="삭제"><br>
								<div style="background:lightgray;height:800px">
									이안에 폴더목록								
								</div>
								</td>
								<td width="70%">관리자 데모</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		<%@ include file="/common/footer.jsp" %>
		</div>
	</div>
</body>
</html>