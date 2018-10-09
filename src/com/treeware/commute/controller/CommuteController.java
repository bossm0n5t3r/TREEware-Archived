package com.treeware.commute.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.treeware.util.PageMove;
import com.treeware.util.TreewareConstance;

@WebServlet("/commute")
public class CommuteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String act = request.getParameter("act");
		System.out.println("CommuteController act ==== " + act);

		String path = "/menu/commute/main.jsp";

		if ("punchIn".equals(act)) {
			PageMove.forward(path, request, response);
		} else if ("".equals(act)) {

		} else {
			PageMove.redirect(path, request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding(TreewareConstance.ENCODING);
		doGet(request, response);
	}

}
