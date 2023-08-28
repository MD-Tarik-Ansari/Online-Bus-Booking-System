package com.jsp.OnlieBusBooking_Servlet_Project.service;

import com.jsp.OnlieBusBooking_Servlet_Project.dao.UserDao;
import com.jsp.OnlieBusBooking_Servlet_Project.dto.User;

public class UserService 
{
    UserDao dao=new UserDao();
    
    public User saveUser(User user)
    {
    	return dao.saveUser(user);
    }
}
