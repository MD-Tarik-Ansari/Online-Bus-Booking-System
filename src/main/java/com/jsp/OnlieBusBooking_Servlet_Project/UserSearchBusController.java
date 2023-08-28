package com.jsp.OnlieBusBooking_Servlet_Project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jsp.OnlieBusBooking_Servlet_Project.connection.BusConnection;
@WebServlet(value = "/UserSearchBus")
public class UserSearchBusController extends HttpServlet
{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	
    	 Connection connection=BusConnection.getBusConnection();
  	   String source=req.getParameter("source");
  	   String destination=req.getParameter("destination");
  	   HttpSession session=req.getSession();
  	   PrintWriter writer=resp.getWriter();
  	   
  	 String query="Select * from addbus where fromcity=? and tocity=?";
  	 
		try {
			PreparedStatement preparedStatement=connection.prepareStatement(query);
			preparedStatement.setString(1, source);
			preparedStatement.setString(2, destination);
			
			ResultSet resultSet=preparedStatement.executeQuery();
			while(resultSet.next())
			{
				if(source.equalsIgnoreCase(resultSet.getString("fromcity")) && destination.equalsIgnoreCase(resultSet.getString("tocity")))
				{
					RequestDispatcher dispatcher=req.getRequestDispatcher("UserBusDisplay.jsp");
					dispatcher.forward(req, resp);
				}
				else {
					writer.write("<html><body>");
					writer.write("<h4 style='color:red'>Username and Password is Invalid </h4>");
					RequestDispatcher dispatcher=req.getRequestDispatcher("UserSearchBus.jsp");
					dispatcher.include(req, resp);
					writer.write("</body></html>");
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

    	
    }
}
