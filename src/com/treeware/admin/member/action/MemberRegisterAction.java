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
		memberDto.setEmp_sq(request.getParameter("empnum"));
		memberDto.setEmp_id(request.getParameter("id"));
		memberDto.setEmp_pw(request.getParameter("pw"));
		memberDto.setDpt_sq(Integer.parseInt(request.getParameter("dptcode")));
		memberDto.setRnk_sq(Integer.parseInt(request.getParameter("jw")));
		memberDto.setPst_sq(Integer.parseInt(request.getParameter("jc")));
		memberDto.setEmp_nm(request.getParameter("empname"));
		memberDto.setEmp_bdate(request.getParameter("birth"));
		memberDto.setEmp_sex(request.getParameter("gender"));
		memberDto.setPms_sq(Integer.parseInt(request.getParameter("power")));
		memberDto.setEmp_tel1(request.getParameter("cell").substring(0, 3));
		memberDto.setEmp_tel2(request.getParameter("cell").substring(4, 8));
		memberDto.setEmp_tel3(request.getParameter("cell").substring(9, 13));
		memberDto.setEmp_zip(request.getParameter("address1"));
		memberDto.setEmp_addr(request.getParameter("address2"));
		memberDto.setEmp_addr_dt(request.getParameter("address3"));
		memberDto.setEmp_bs_tel1("02");
		memberDto.setEmp_bs_tel2("1234");
		memberDto.setEmp_bs_tel3(request.getParameter("phone"));
//		memberDto.set(request.getParameter("email"));
		memberDto.setEmp_crt(request.getParameter("crtname"));
		System.out.println(request.getParameter("empnum"));
		System.out.println(request.getParameter("id"));
		System.out.println(request.getParameter("pw"));
		System.out.println(request.getParameter("dptcode"));
		System.out.println(request.getParameter("jw"));
		System.out.println(request.getParameter("jc"));
		System.out.println(request.getParameter("empname"));
		System.out.println(request.getParameter("birth"));
		System.out.println(request.getParameter("gender"));
		System.out.println(request.getParameter("power"));
		System.out.println(request.getParameter("address1"));
		System.out.println(request.getParameter("address2"));
		System.out.println(request.getParameter("address3"));
		System.out.println(request.getParameter("phone"));
		adminMemberService.register(memberDto);
		return "/adminmenu/account/main.jsp";
	}

}
