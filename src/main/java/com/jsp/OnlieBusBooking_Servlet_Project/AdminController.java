package com.jsp.OnlieBusBooking_Servlet_Project;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet(value = "/admin")
public class AdminController extends HttpServlet
{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	
    	HttpSession httpSession=req.getSession();
    	
    	String username=req.getParameter("user");
    	String password=req.getParameter("pass");
    	
    	PrintWriter printWriter=resp.getWriter();
    	
    	if(username.equalsIgnoreCase("admin@gmail.com") && password.equalsIgnoreCase("admin"))
    	{
    		httpSession.setAttribute("MyPassword", password);
    		RequestDispatcher dispatcher=req.getRequestDispatcher("AdminProfile.jsp");
    		dispatcher.forward(req, resp);
    	}
    	else {
			printWriter.write("<html><body>");
			printWriter.write("<h4 style='color:red'>Username and Password is Invalid </h4>");
			RequestDispatcher dispatcher=req.getRequestDispatcher("Admin.jsp");
			dispatcher.include(req, resp);
			printWriter.write("</body></html>");
		}
    }
}
