package com.jsp.OnlieBusBooking_Servlet_Project.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.OnlieBusBooking_Servlet_Project.dto.Bus;
import com.jsp.OnlieBusBooking_Servlet_Project.service.BusService;
@WebServlet(value = "/update")
public class BusUpdateController extends HttpServlet
{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	
     int id=Integer.parseInt(req.getParameter("busno"));
   	 String name=req.getParameter("busname");
   	 String fromcity=req.getParameter("fromcity");
   	 String tocity=req.getParameter("tocity");
   	 String destination=req.getParameter("destination");
   	 double price=Double.parseDouble(req.getParameter("price"));
   	 String date=req.getParameter("date");
   	 String time=req.getParameter("time");
   	 
   	SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd");
   	 
   	 Bus bus=new Bus();
   	 
   	 bus.setBusId(id);
   	 bus.setBusName(name);
   	 bus.setBusfromCity(fromcity);
   	 bus.setBusfromCity(fromcity);
   	 bus.setBustoCity(tocity);
   	 bus.setBusDestination(destination);
   	 bus.setTicketPrice(price);
   	 try {
		bus.setDate(dateFormat.parse(date));
	} catch (ParseException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
   	 bus.setTime(time);
   	 
   	 BusService service=new BusService();
   	 
   	 service.updateBus(id, bus);
   	 
   	 RequestDispatcher dispatcher=req.getRequestDispatcher("display.jsp");
   	 dispatcher.forward(req, resp);
    }
}
