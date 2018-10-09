package com.treeware.member.action;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.treeware.action.Action;
import com.treeware.member.model.EmpDto;
import com.treeware.member.service.MemberService;

public class MemberModifyAction implements Action {
	private MemberService memberService;

	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String root = request.getContextPath();
		String path = "/index.jsp";
		HttpSession session = request.getSession();
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		Map <String, String> map = new HashMap <String, String> ();
		map.put("id", id);
		map.put("pw", pw);
		EmpDto empDto = (EmpDto)session.getAttribute("userInfo");
		map.put("empsq", empDto.getEMP_SQ());
		int cnt = memberService.modify(map);
		return path;
	}

}
