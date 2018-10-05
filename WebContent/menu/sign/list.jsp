<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/import.jsp" %>
<div class="buttonmenu" align="right" style="margin:0 0 20px 0">
	<button type="button" class="btn btn-primary">선택삭제</button>
	<button type="button" class="btn btn-primary">전체삭제</button>
</div>
<table class="table-hover" id="listtable" style="width:100%;height:100%">
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
          <th width="50%">서류제목</th>
          <th width="10%">담당자</th>
          <th width="10%">제출일</th>
          <th width="15%">처리현황</th>
          <th width="5%">수정·삭제</th>
       </tr>
    </thead>
    <tbody>
       <% for(int i=0; i<15 ; i++){ %>
       <tr height="50px" style="border-bottom: 1px #eee solid">
          <td>
             <div class="form-check">
                <label class="form-check-label">
                   <input class="form-check-input task-select" type="checkbox">
                   <span class="form-check-sign"></span>
                </label>
             </div>
          </td>
          <td>9월 회식비용 영수증</td>
          <td><b>손예진</b></td>
          <td>18.10.03</td>
          <td>처리보류</td>
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
