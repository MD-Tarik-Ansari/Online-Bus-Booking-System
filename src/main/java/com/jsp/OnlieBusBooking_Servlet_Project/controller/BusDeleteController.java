package com.jsp.OnlieBusBooking_Servlet_Project.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.OnlieBusBooking_Servlet_Project.service.BusService;
@WebServlet(value = "/delete")
public class BusDeleteController extends HttpServlet
{
   @Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	   int id=Integer.parseInt(req.getParameter("id"));
	   
	   BusService service=new BusService();
	   
	   int tableId=service.deleteBus(id);
	   
	   if(tableId!=0)
	   {
		   req.getRequestDispatcher("display.jsp").forward(req, resp);
	   }
	   else {
		req.getRequestDispatcher("display.jsp").forward(req, resp);
	}
}
}
