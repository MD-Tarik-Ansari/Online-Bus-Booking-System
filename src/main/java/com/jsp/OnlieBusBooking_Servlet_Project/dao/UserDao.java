package com.jsp.OnlieBusBooking_Servlet_Project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.jsp.OnlieBusBooking_Servlet_Project.connection.BusConnection;
import com.jsp.OnlieBusBooking_Servlet_Project.dto.User;

public class UserDao 
{
    public User saveUser(User user)
    {
    	Connection connection=BusConnection.getBusConnection();
    	
    	String insertQuery="insert into user values(?,?,?,?)";
    	
    	try {
			PreparedStatement preparedStatement=connection.prepareStatement(insertQuery);
			preparedStatement.setString(1, user.getUserName());
			preparedStatement.setString(2, user.getUserEmail());
			preparedStatement.setString(3, user.getPassword());
			preparedStatement.setLong(4, user.getPhone());
			
			preparedStatement.execute();
			return user;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	return null;
    }
}
