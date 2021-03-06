
package com.hornylikeme.servlets.register;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.ServletException;

import javax.servlet.RequestDispatcher;

import java.io.PrintWriter;
import java.io.IOException;

/* ============================================= */
/*                                               */
/*  Step 1 of the new user registration process  */
/*                                               */
/* ============================================= */

public class AcctTypeEval extends HttpServlet {

	public void doPost(HttpServletRequest request, 
                           HttpServletResponse response) {

		// ------------------------------------------------

		String accountType = request.getParameter("accountType");
		String sf_interest = request.getParameter("SF_Interest");
		String sm_interest = request.getParameter("SM_Interest");
		String cmf_interest = request.getParameter("CMF_Interest");
		String cmm_interest = request.getParameter("CMM_Interest");
		String cff_interest = request.getParameter("CFF_Interest");
		String zipCode = request.getParameter("zipCode");

		// ------------------------------------------------

		// move posted data into request attributes

		request.setAttribute("accountType", accountType);
		request.setAttribute("SF_Interest", sf_interest);
		request.setAttribute("SM_Interest", sm_interest);
		request.setAttribute("CMF_Interest", cmf_interest);
		request.setAttribute("CMM_Interest", cmm_interest);
		request.setAttribute("CFF_Interest", cff_interest);
		request.setAttribute("zipCode", zipCode);

		// ------------------------------------------------


		try {
			if (accountType.charAt(0) == 'S') {

				// ------------------------------------------
				// account is a single person
				// forward to jsp "register/single_reg.jsp"
				// ------------------------------------------

				String url = "/register/single_reg1.jsp";
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
				dispatcher.forward(request, response);

			} else {
				// account is a couple
			}
		} catch (ServletException e) {
			System.out.println(e.toString());
		} catch (IOException e) {
			System.out.println(e.toString());
		}

	}

}

/*

		try {
			PrintWriter out = response.getWriter();
			out.println("Hello HLM");
		} catch(IOException e) {
			// do nothing for now
		}

*/

