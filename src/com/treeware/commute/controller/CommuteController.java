package com.treeware.commute.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.treeware.action.Action;
import com.treeware.commute.action.CommuteGetCommuteAction;
import com.treeware.util.PageMove;
import com.treeware.util.TreewareConstance;

@WebServlet("/commute")
public class CommuteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private ApplicationContext applicationContext;
	private Action commuteGetCommuteAction;

	public void setCommuteGetCommuteAction(Action commuteGetCommuteAction) {
		this.commuteGetCommuteAction = commuteGetCommuteAction;
	}

	@Override
	public void init() throws ServletException {
		applicationContext = new ClassPathXmlApplicationContext("com/treeware/main/applicationContext.xml");
		commuteGetCommuteAction = applicationContext.getBean("cgca", CommuteGetCommuteAction.class);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String act = request.getParameter("act");
		System.out.println("CommuteController act ==== " + act);

		String path = "/menu/commute/main.jsp";

		if ("punchIn".equals(act)) {
			PageMove.forward(path, request, response);
		} else if ("".equals(act)) {

		} else if ("".equals(act)) {

		} else if ("".equals(act)) {

		} else if ("".equals(act)) {

		} else if ("".equals(act)) {

		} else if ("".equals(act)) {

		} else if ("".equals(act)) {

		} else if ("".equals(act)) {

		} else if ("".equals(act)) {

		// AJAX 부분
		} else if ("getCommute".equals(act)) {
			commuteGetCommuteAction.execute(request, response);
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
