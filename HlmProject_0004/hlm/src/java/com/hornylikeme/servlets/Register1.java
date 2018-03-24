
package com.hornylikeme.servlets;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.PrintWriter;
import java.io.IOException;

/* ============================================= */
/*                                               */
/*  Step 1 of the new user registration process  */
/*                                               */
/* ============================================= */

class Register1 {

	public void doPost(HttpServletRequest request, 
                           HttpServletResponse response) {

		String accountType = request.getParameter("accountType");
		String yearOfBirth = request.getParameter("yearOfBirth");






	}

}

