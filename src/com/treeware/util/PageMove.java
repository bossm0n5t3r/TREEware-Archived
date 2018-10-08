package com.treeware.util;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PageMove {
	public static void redirect(String path, HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.sendRedirect(request.getContextPath() + path);
	}
	
	public static void forward(String path, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
	}
}
