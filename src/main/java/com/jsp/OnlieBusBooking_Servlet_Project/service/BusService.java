package com.jsp.OnlieBusBooking_Servlet_Project.service;

import java.util.List;

import com.jsp.OnlieBusBooking_Servlet_Project.dao.BusDao;
import com.jsp.OnlieBusBooking_Servlet_Project.dto.Bus;

public class BusService 
{
	BusDao busDao=new BusDao();
	public Bus saveBus(Bus bus)
	{
		return busDao.saveBus(bus);
	}
	
	public List<Bus> displayBus()
	{
		return busDao.displayBus();
	}
	
	 public int deleteBus(int id)
	 {
		 return busDao.deleteBus(id);
	 }
	 
	 public int updateBus(int busId,Bus bus)
	 {
		 return busDao.updateBus(busId, bus);
	 }
}
