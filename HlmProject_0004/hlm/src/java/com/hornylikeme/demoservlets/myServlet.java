
package com.hornylikeme.demoservlets;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.PrintWriter;
import java.io.IOException;

public class myServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, 
                          HttpServletResponse response) {

		try {

			PrintWriter out = response.getWriter();

			out.println("Hello HLM");

		} catch(IOException e) {

			// do nothing for now

		}


	}

}

