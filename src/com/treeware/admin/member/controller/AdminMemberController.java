package com.treeware.admin.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.treeware.admin.member.action.MemberCompareNumAction;
import com.treeware.admin.member.action.MemberRegisterAction;
import com.treeware.admin.member.service.MemberService;
import com.treeware.util.PageMove;
import com.treeware.util.TreewareConstance;

@WebServlet("/adminmember")
public class AdminMemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private MemberRegisterAction memberRegisterAction;
	
	public void setMemberRegisterAction(MemberRegisterAction memberRegisterAction) {
		this.memberRegisterAction = memberRegisterAction;
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String root = request.getContextPath();

		String act = request.getParameter("act");
		
		
		String path = "/adminmenu/home/main.jsp";
		
		if ("mvregister".equals(act)) {
			path = "/adminmenu/account/register.jsp";
			PageMove.forward(path, request, response);
		} else if ("register".equals(act)) {
			ApplicationContext context = new ClassPathXmlApplicationContext("com/treeware/main/applicationContext.xml");
			MemberRegisterAction control = context.getBean("mra", MemberRegisterAction.class);
			path = control.execute(request, response);
			PageMove.forward(path, request, response);
		} else if ("".equals(act)) {
			
		} else if ("".equals(act)) {
			
		} else if ("".equals(act)) {
			
		} else if ("".equals(act)) {
			
		} else if ("".equals(act)) {
			
		} else if ("".equals(act)) {
			
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding(TreewareConstance.ENCODING);
		doGet(request, response);
	}

}
