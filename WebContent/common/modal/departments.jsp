<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="departments" class="modal fade">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header">
				<h6 class="modal-title">부서검색</h6>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">&times;</button>
			</div>
			<div class="modal-body text-center" align="center">
				<form>
					<table style="width:100%">
						<tr>
							<td width="80%" style="padding:10px">
								<input type="text" name="name" id="name" class="mainbox" placeholder="검색어를 입력하세요" style="padding:10px" required>
							</td>
							<td align="right" width="20%">
								<input name="department" id="department" data-toggle="modal" data-target="#departments" style="width:100%;height:100%"class="btn btn-primary btn-sm" type="button" value="검색">
							</td>
						</tr>
					</table>
					<hr>
				</form>
				<table class="table table-hover" style="width:90%;margin:20px">
					<thead>
						<tr>
							<th width="30%">부서코드</th>
							<th width="70%">부서명</th>
						</tr>
					</thead>
					<tbody style="margin:20px">
						<%for(int i=0; i<8 ; i++){ %>
						<tr>
							<td>DD120</td>
							<td>경영개발1팀</td>
						</tr>
						<%} %>
					</tbody>
				</table>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">확인</button>
			</div>
		</div>
	</div>
</div>