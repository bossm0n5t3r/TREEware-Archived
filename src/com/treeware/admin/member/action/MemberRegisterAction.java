package com.treeware.admin.member.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.treeware.action.Action;
import com.treeware.admin.member.model.MemberDto;
import com.treeware.admin.member.service.MemberService;

public class MemberRegisterAction implements Action{

	private MemberService adminMemberService;
	
	public void setAdminMemberService(MemberService adminMemberService) {
		this.adminMemberService = adminMemberService;
	}
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		MemberDto memberDto = new MemberDto();
		memberDto.setEmp_sq(request.getParameter("empno"));
		memberDto.setEmp_sq(request.getParameter("id"));
		memberDto.setEmp_sq(request.getParameter("pw"));
		memberDto.setEmp_sq(request.getParameter("dptname"));
		memberDto.setEmp_sq(request.getParameter("jw"));
		memberDto.setEmp_sq(request.getParameter("jc"));
		memberDto.setEmp_sq(request.getParameter("name"));
		memberDto.setEmp_sq(request.getParameter("birth"));
		memberDto.setEmp_sq(request.getParameter("gender"));
		memberDto.setEmp_sq(request.getParameter("power"));
		memberDto.setEmp_sq(request.getParameter("cell"));
		memberDto.setEmp_sq(request.getParameter("address2"));
		memberDto.setEmp_sq(request.getParameter("address3"));
		memberDto.setEmp_sq(request.getParameter("phone"));
		memberDto.setEmp_sq(request.getParameter("email"));
		
		adminMemberService.register(memberDto);
		return "/adminmenu/account/main.jsp";
	}

}
