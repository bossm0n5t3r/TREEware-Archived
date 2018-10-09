package com.treeware.member.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.treeware.action.Action;

public class MemberLogoutAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.removeAttribute("userInfo");
		return "/index.jsp";
	}

}
