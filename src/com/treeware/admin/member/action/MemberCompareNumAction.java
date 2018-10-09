package com.treeware.admin.member.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.treeware.action.Action;
import com.treeware.admin.member.service.MemberService;

public class MemberCompareNumAction implements Action{

	private MemberService adminMemberService;
	
	public void setAdminMemberService(MemberService adminMemberService) {
		this.adminMemberService = adminMemberService;
	}


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path = "";
		int cnt = 0;
		String memberNum = "asdf";
		cnt = adminMemberService.compareMemberNum(memberNum);
		if(cnt == 0) {
			request.setAttribute("memNum", cnt);
			path = "/adminmenu/account/register.jsp";
		} else {
			request.setAttribute("memNum", cnt);
			path = "/adminmenu/account/register.jsp";
		}
		return path;
	}

}
