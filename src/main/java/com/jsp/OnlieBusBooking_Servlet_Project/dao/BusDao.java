package com.jsp.OnlieBusBooking_Servlet_Project.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.jsp.OnlieBusBooking_Servlet_Project.connection.BusConnection;
import com.jsp.OnlieBusBooking_Servlet_Project.dto.Bus;

public class BusDao 
{
   public Bus saveBus(Bus bus)
   {
	   Date date=new Date(bus.getDate().getTime());
	   
	   
	   Connection connection=BusConnection.getBusConnection();
	   
	   String insertBus="insert into addbus values(?,?,?,?,?,?,?,?)";
	   
	   try {
		PreparedStatement preparedStatement=connection.prepareStatement(insertBus);
		
		preparedStatement.setInt(1, bus.getBusId());
		preparedStatement.setString(2, bus.getBusName());
		preparedStatement.setString(3, bus.getBusfromCity());
		preparedStatement.setString(4, bus.getBustoCity());
		preparedStatement.setString(5, bus.getBusDestination());
		preparedStatement.setDouble(6, bus.getTicketPrice());
		preparedStatement.setDate(7, date);
		preparedStatement.setString(8, bus.getTime());
		
		preparedStatement.execute();
		return bus;
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   
	   return null;
   }
   
   
   //display
   
   
   public List<Bus> displayBus()
   {
	   Connection connection=BusConnection.getBusConnection();
	   
	   String displayQuery="select * from addbus";
	   
	   try {
		PreparedStatement preparedStatement=connection.prepareStatement(displayQuery);
		ResultSet resultSet=preparedStatement.executeQuery();
		
		List<Bus> bus=new ArrayList<Bus>();
		
		while(resultSet.next())
		{
			Bus bus2=new Bus();
			
			bus2.setBusId(resultSet.getInt("id"));
			bus2.setBusName(resultSet.getString("name"));
			bus2.setBusfromCity(resultSet.getString("fromcity"));
			bus2.setBustoCity(resultSet.getString("tocity"));
			bus2.setBusDestination(resultSet.getString("destination"));
			bus2.setTicketPrice(resultSet.getDouble("price"));
			bus2.setDate(resultSet.getDate("date"));
			bus2.setTime(resultSet.getString("time"));
			
			bus.add(bus2);
		}
		return bus;
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   return null;
   }
   
   
   //delete
   
   public int deleteBus(int id)
   {
	   Connection connection=BusConnection.getBusConnection();
	   
	   String deleteQuery="delete from addbus where id=?";
	   
	   try {
		PreparedStatement preparedStatement=connection.prepareStatement(deleteQuery);
		preparedStatement.setInt(1, id);
		
		return preparedStatement.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   return 0;
   }
   
   
   //update
   
   
   public int updateBus(int busId,Bus bus)
   {
	   Date date=new Date(bus.getDate().getTime());
	   
	   Connection connection=BusConnection.getBusConnection();
	   
	   String updateQuery="update addbus set name=?,fromcity=?,tocity=?,destination=?,price=?,date=?,time=? where id=?";
	   
	   try {
		PreparedStatement preparedStatement=connection.prepareStatement(updateQuery);
		
		preparedStatement.setString(1, bus.getBusName());
		preparedStatement.setString(2, bus.getBusfromCity());
		preparedStatement.setString(3, bus.getBustoCity());
		preparedStatement.setString(4, bus.getBusDestination());
		preparedStatement.setDouble(5, bus.getTicketPrice());
		preparedStatement.setDate(6, date);
		preparedStatement.setString(7, bus.getTime());
		preparedStatement.setInt(8, busId);
		
		return preparedStatement.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   return 0;
   }
   
   
   //getByBusId
   
   
   public Bus getByBusId(int busId)
   {
	   Connection connection=BusConnection.getBusConnection();
	   
	   String Query="select * from addbus where id=?";
	   
	   try {
		PreparedStatement preparedStatement=connection.prepareStatement(Query);
		
		preparedStatement.setInt(1, busId);
		ResultSet resultSet=preparedStatement.executeQuery();
		
		Bus bus=new Bus();
		
		while(resultSet.next())
		{
			bus.setBusId(resultSet.getInt("id"));
			bus.setBusName(resultSet.getString("name"));
			bus.setBusfromCity(resultSet.getString("fromcity"));
			bus.setBustoCity(resultSet.getString("tocity"));
			bus.setBusDestination(resultSet.getString("destination"));
			bus.setTicketPrice(resultSet.getDouble("price"));
			bus.setDate(resultSet.getDate("date"));
			bus.setTime(resultSet.getString("time"));
		}
		return bus;
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   return null;
   }
}
