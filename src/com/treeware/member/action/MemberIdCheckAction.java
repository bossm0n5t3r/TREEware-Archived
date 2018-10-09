package com.treeware.member.action;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.treeware.action.Action;
import com.treeware.member.service.MemberService;

public class MemberIdCheckAction implements Action {

	private MemberService memberService;

	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path = "/membermodify.jsp";
		String id = request.getParameter("id");
		int cnt = memberService.idcheck(id);
		response.getWriter().print(cnt);
		
		return path;
	}

}
