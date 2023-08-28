<%@page import="java.util.List"%>
<%@page import="com.jsp.OnlieBusBooking_Servlet_Project.dao.BusDao"%>
<%@page import="com.jsp.OnlieBusBooking_Servlet_Project.dto.Bus"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<jsp:include page="nav.jsp"/>
<body>
<% BusDao busDao=new BusDao();
   List<Bus> bus=busDao.displayBus();
%>
     <table class="table table-info table-striped">
  <thead>
  
  <tr>
  <th scope="col">BusNo.</th>
  <th scope="col">BusName</th>
  <th scope="col">BusFromCity</th>
  <th scope="col">BusToCity</th>
  <th scope="col">BusDestination</th>
  <th scope="col">BusTicketPrice</th>
  <th scope="col">BusDate</th>
  <th scope="col">BusTime</th>
  <th scope="col">Delete</th>
  <th scope="col">Update</th>
  </tr>
  </thead>
  
  <tbody>
  <%for(Bus bus2:bus) {%>
  <tr>
  <td><%= bus2.getBusId() %></td>
  <td><%= bus2.getBusName() %></td>
  <td><%= bus2.getBusfromCity() %></td>
  <td><%= bus2.getBustoCity() %></td>
  <td><%= bus2.getBusDestination() %></td>
  <td><%= bus2.getTicketPrice() %></td>
  <td><%= bus2.getDate() %></td>
  <td><%= bus2.getTime() %></td>
  <td><a href="delete?id=<%=bus2.getBusId()%>"><button style="color:blue">Delete</button></a></td>
  <td><a href="updateOpen?id=<%=bus2.getBusId()%>"><button style="color:blue">Update</button></a></td>
  </tr>
  <%} %>
  </tbody>
  </table>
</body>
</html>