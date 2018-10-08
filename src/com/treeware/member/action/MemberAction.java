package com.treeware.member.action;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.treeware.action.Action;
import com.treeware.member.model.EmpDto;
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
		Map <String, String> map = new HashMap <String, String> ();
		map.put("id", id);
		map.put("pw", pw);
		EmpDto empDto = memberService.login(map);
		if (empDto != null) {
			HttpSession session = request.getSession();
			session.setAttribute("userInfo", empDto);
			if ("TREE".equals(check)) {
				path = "/adminmenu/account/edit.jsp";
			} else {
				int PMS_SQ = empDto.getPMS_SQ();
				if (PMS_SQ == 1) {
					path = "/menu/home/main.jsp";
				} else if (PMS_SQ == 2) {
					path = "/adminmenu/home/main.jsp";
				}
			}
		}
		return path;
	}

}
