package com.treeware.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.treeware.action.Action;
import com.treeware.member.action.MemberLoginAction;
import com.treeware.util.PageMove;
import com.treeware.util.TreewareConstance;

@WebServlet("/member")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Action memberLoginAction;
	private ApplicationContext applicationContext;

	public void setMemberLoginAction(Action memberLoginAction) {
		this.memberLoginAction = memberLoginAction;
	}

	@Override
	public void init() throws ServletException {
		applicationContext = new ClassPathXmlApplicationContext("com/treeware/main/applicationContext.xml");
		memberLoginAction = applicationContext.getBean("mla", MemberLoginAction.class);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String act = request.getParameter("act");
		System.out.println("MemberController act ==== " + act);

		String path = "/index.jsp";

		if ("login".equals(act)) {
			path = memberLoginAction.execute(request, response);
			PageMove.forward(path, request, response);
		} else if ("mvAskform".equals(act)) {
			path = "/askform.jsp";
			PageMove.redirect(path, request, response);
		} else if ("".equals(act)) {

		} else if ("".equals(act)) {

		} else if ("".equals(act)) {

		} else if ("".equals(act)) {

		} else if ("".equals(act)) {

		} else if ("".equals(act)) {

		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding(TreewareConstance.ENCODING);
		doGet(request, response);
	}

}
