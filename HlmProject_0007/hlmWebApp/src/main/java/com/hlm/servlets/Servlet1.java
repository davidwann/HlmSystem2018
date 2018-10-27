package com.hlm.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;

/**
 * Servlet implementation class Servlet1
 */
public class Servlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// doGet(request, response);

		String preferredGender = request.getParameter("gender");

		if (preferredGender.equalsIgnoreCase("M")) {
			preferredGender = "Male";
		}
		else {
			preferredGender = "Female";
		}

		request.setAttribute("gender", preferredGender);
		
		/* - - - - - - - - - - - - - - - - - - - - */
		
		ServletContext sc;
		RequestDispatcher dispatcher;
		String url;
		
		/* - - - - - - - - - - - - - - - - - - - - */
		
		sc = this.getServletContext();
		url = "/search_result.jsp";
		dispatcher = sc.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}

}
