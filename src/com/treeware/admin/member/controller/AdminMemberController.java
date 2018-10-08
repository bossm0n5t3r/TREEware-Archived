package com.treeware.admin.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.treeware.util.TreewareConstance;

@WebServlet("/adminmember")
public class AdminMemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String root = request.getContextPath();
		
		String act = request.getParameter("act");
		
		String path = "/index.jsp";
		
		if ("login".equals(act)) {
			
		} else if ("".equals(act)) {
			
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
