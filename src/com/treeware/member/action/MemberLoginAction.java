package com.treeware.member.action;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.treeware.action.Action;
import com.treeware.member.model.EmpDto;
import com.treeware.member.service.MemberService;

public class MemberLoginAction implements Action {
	private MemberService memberService;

	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String root = request.getContextPath();
		String path = "/index.jsp";
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String check = id.substring(0, 3);
		Map <String, String> map = new HashMap <String, String> ();
		map.put("id", id);
		map.put("pw", pw);
		EmpDto empDto = memberService.login(map);
		if (empDto != null) {
			String loginOk = request.getParameter("autoLogin");
			if ("loginOk".equals(loginOk)) {
				Cookie cookie = new Cookie("LOGIN_ID", id);
				cookie.setPath(root);
				cookie.setMaxAge(60*60*24);
				response.addCookie(cookie);
			} else {
				Cookie [] cookies = request.getCookies();
				if (cookies != null) {
					for (Cookie cookie : cookies) {
						if ("LOGIN_ID".equals(cookie.getName())) {
							cookie.setMaxAge(0);
							response.addCookie(cookie);
							break;
						}
					}
				}
			}
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
