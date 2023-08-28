package com.jsp.OnlieBusBooking_Servlet_Project.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.OnlieBusBooking_Servlet_Project.dto.User;
import com.jsp.OnlieBusBooking_Servlet_Project.service.UserService;
@WebServlet(value = "/userRegister")
public class UserInsertController extends HttpServlet
{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	
    	String name=req.getParameter("name");
    	String email=req.getParameter("email");
    	String password=req.getParameter("password");
    	long phone=Long.parseLong(req.getParameter("phone"));
    	
    	PrintWriter printWriter=resp.getWriter();
    	
    	User user=new User();
    	
    	user.setUserName(name);
    	user.setUserEmail(email);
    	user.setPassword(password);
    	user.setPhone(phone);
    	
    	UserService service=new UserService();
    	
    	service.saveUser(user);
    	
     printWriter.write("<html><body>");
   	 printWriter.write("<h6 style='color:green'>Data inserted Successfully</h6>");
   	 RequestDispatcher dispatcher=req.getRequestDispatcher("User.jsp");
   	 dispatcher.include(req, resp);
   	 printWriter.write("</body></html>");
    }
}
