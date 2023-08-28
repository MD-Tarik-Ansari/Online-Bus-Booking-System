package com.jsp.OnlieBusBooking_Servlet_Project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jsp.OnlieBusBooking_Servlet_Project.connection.BusConnection;
import com.jsp.OnlieBusBooking_Servlet_Project.dto.User;
@WebServlet(value = "/userLogin")
public class UserLoginController extends HttpServlet
{
   @Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	   Connection connection=BusConnection.getBusConnection();
	   String username=req.getParameter("username");
	   String password=req.getParameter("password");
	   
	   HttpSession session=req.getSession();
	   PrintWriter writer=resp.getWriter();
	   
	   String query="Select * from user where email=? and password=?";
	   
	   try {
		PreparedStatement preparedStatement=connection.prepareStatement(query);
		preparedStatement.setString(1, username);
		preparedStatement.setString(2, password);
		ResultSet resultSet=preparedStatement.executeQuery();
		while(resultSet.next())
		{
			if(username.equalsIgnoreCase(resultSet.getString("email")) && password.equalsIgnoreCase(resultSet.getString("password")))
			{
				RequestDispatcher dispatcher=req.getRequestDispatcher("UserSearchBus.jsp");
				dispatcher.forward(req, resp);
			}
			else {
				writer.write("<html><body>");
				writer.write("<h4 style='color:red'>Username and Password is Invalid </h4>");
				RequestDispatcher dispatcher=req.getRequestDispatcher("User.jsp");
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
