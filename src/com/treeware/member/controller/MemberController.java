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
import com.treeware.member.action.*;
import com.treeware.util.PageMove;
import com.treeware.util.TreewareConstance;

@WebServlet("/member")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Action memberLoginAction;
	private Action memberLogoutAction;
	private Action memberCommuteListAction;
	private ApplicationContext applicationContext;

	public void setMemberLoginAction(Action memberLoginAction) {
		this.memberLoginAction = memberLoginAction;
	}

	public void setMemberLogoutAction(Action memberLogoutAction) {
		this.memberLogoutAction = memberLogoutAction;
	}

	public void setMemberCommuteListAction(Action memberCommuteListAction) {
		this.memberCommuteListAction = memberCommuteListAction;
	}

	@Override
	public void init() throws ServletException {
		applicationContext = new ClassPathXmlApplicationContext("com/treeware/main/applicationContext.xml");
		memberLoginAction = applicationContext.getBean("mlia", MemberLoginAction.class);
		memberLogoutAction = applicationContext.getBean("mloa", MemberLogoutAction.class);
		memberCommuteListAction = applicationContext.getBean("mcla", MemberCommuteListAction.class);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String act = request.getParameter("act");
		System.out.println("MemberController act ==== " + act);

		String path = "/index.jsp";

		if ("login".equals(act)) {
			path = memberLoginAction.execute(request, response);
			PageMove.forward(path, request, response);
		} else if ("logout".equals(act)) {
			path = memberLogoutAction.execute(request, response);
			PageMove.forward(path, request, response);
		} else if ("mvAskform".equals(act)) {
			path = "/askform.jsp";
			PageMove.redirect(path, request, response);
		} else if ("commuteList".equals(act)) {
			memberCommuteListAction.execute(request, response);
		} else if ("".equals(act)) {

		} else if ("".equals(act)) {

		} else if ("".equals(act)) {

		} else if ("".equals(act)) {

		} else if ("".equals(act)) {

		} else {
			PageMove.redirect(path, request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding(TreewareConstance.ENCODING);
		doGet(request, response);
	}

}
