package com.treeware.member.action;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.treeware.action.Action;
import com.treeware.member.service.MemberService;

public class MemberAction implements Action {
	private MemberService memberService;

	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path = "/index.jsp";
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String check = id.substring(0, 3);
		if ("TREE".equals(check)) {
			path = "/adminmenu/account/edit.jsp";
		} else {
			Map <String, String> map = new HashMap <String, String> ();
			map.put("id", id);
			map.put("pw", pw);
			int cnt = memberService.login(map);
			if (cnt != 0) {
				path = "/menu/home/main.jsp";
			}
		}
		return path;
	}

}
