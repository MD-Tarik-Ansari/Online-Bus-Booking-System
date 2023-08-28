package com.jsp.OnlieBusBooking_Servlet_Project.dto;

import java.sql.Time;
import java.util.Date;

public class Bus 
{
    private int busId;
    private String busName;
    private String busfromCity;
    private String bustoCity;
    private String busDestination;
    private double ticketPrice;
    private Date date;
    private String time;
	public int getBusId() {
		return busId;
	}
	public void setBusId(int busId) {
		this.busId = busId;
	}
	public String getBusName() {
		return busName;
	}
	public void setBusName(String busName) {
		this.busName = busName;
	}
	public String getBusfromCity() {
		return busfromCity;
	}
	public void setBusfromCity(String busfromCity) {
		this.busfromCity = busfromCity;
	}
	public String getBustoCity() {
		return bustoCity;
	}
	public void setBustoCity(String bustoCity) {
		this.bustoCity = bustoCity;
	}
	public String getBusDestination() {
		return busDestination;
	}
	public void setBusDestination(String busDestination) {
		this.busDestination = busDestination;
	}
	public double getTicketPrice() {
		return ticketPrice;
	}
	public void setTicketPrice(double ticketPrice) {
		this.ticketPrice = ticketPrice;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
    
	
}
