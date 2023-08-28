<%@page import="com.jsp.OnlieBusBooking_Servlet_Project.dto.Bus"%>
<%@page import="com.jsp.OnlieBusBooking_Servlet_Project.dao.BusDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update The Bus</title>
<!-- Font Awesome -->
<link
  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
  rel="stylesheet"
/>
<!-- Google Fonts -->
<link
  href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
  rel="stylesheet"
/>
<!-- MDB -->
<link
  href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.css"
  rel="stylesheet"
/>
<style>
    .gradient-custom {
/* fallback for old browsers */
background: #f093fb;

/* Chrome 10-25, Safari 5.1-6 */
background: -webkit-linear-gradient(to bottom right, rgba(240, 147, 251, 2), rgba(245, 87, 108, 1));

/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
background: linear-gradient(to bottom right, rgba(240, 147, 251, 2), rgba(245, 87, 108, 1))
}

.card-registration .select-input.form-control[readonly]:not([disabled]) {
font-size: 1rem;
line-height: 2.15;
padding-left: .75em;
padding-right: .75em;
}
.card-registration .select-arrow {
top: 10px;
}
/* Color of the links BEFORE scroll */
.navbar-scroll .nav-link,
.navbar-scroll .navbar-toggler-icon,
.navbar-scroll .navbar-brand {
  color: #fff;
}

/* Color of the links AFTER scroll */
.navbar-scrolled .nav-link,
.navbar-scrolled .navbar-toggler-icon,
.navbar-scrolled .navbar-brand {
  color: #fff;
}

/* Color of the navbar AFTER scroll */
.navbar-scroll,
.navbar-scrolled {
  background-color: #cbbcb1;
}

.mask-custom {
  backdrop-filter: blur(5px);
  background-color: rgba(255, 255, 255, .15);
}

.navbar-brand {
  font-size: 1.50rem;
  letter-spacing: 1px;
}
</style>
</head>
<body>

<%BusDao dao=new BusDao();
  int id1=Integer.parseInt(request.getParameter("id"));
  Bus bus=dao.getByBusId(id1);
%>

      <section class="vh-100 gradient-custom">
  <div class="container py-5 h-100">
    <div class="row justify-content-center align-items-center h-100">
      <div class="col-12 col-lg-9 col-xl-7">
        <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
          <div class="card-body p-4 p-md-3">
            <h3 class="mb-4 pb-4 pb-md-0 mb-md-4 align-items-center h-100 text-center">Update The Bus</h3>
            <form action="update" method="post">

              <div class="row">
                <div class="col-md-6 mb-3">

                  <div class="form-outline d-flex justify-content-center">
                    <input type="text" id="firstName" class="form-control-lg" placeholder="Enter The Bus No." name="busno" value="<%= bus.getBusId() %>"/>
                    
                  </div>

                </div>
                <div class="col-md-6 mb-3">

                  <div class="form-outline d-flex justify-content-center">
                    <input type="text" id="lastName" class="form-control-lg" placeholder="Enter The Bus Name" name="busname" value="<%= bus.getBusName() %>"/>
                  </div>

                </div>
              </div>

              <div class="row">
                <div class="col-md-6 mb-3 d-flex align-items-center">

                  <div class="form-outline datepicker w-100 d-flex justify-content-center">
                    <input type="text" class="form-control-lg" id="birthdayDate" placeholder="Enter The From City" name="fromcity" value="<%= bus.getBusfromCity() %>"/>
                  </div>

                </div>

                  <div class="col-md-6 mb-3">

                  <div class="form-outline d-flex justify-content-center">
                    <input type="text" id="lastName" class="form-control-lg" placeholder="Enter The To City" name="tocity" value="<%=bus.getBustoCity() %>"/>

                  </div>

                </div>
              </div>

              <div class="row">
                <div class="col-md-6 mb-2 pb-2">

                  <div class="form-outline d-flex justify-content-center">
                    <input type="text" id="emailAddress" class="form-control-lg" placeholder="Enter The Destination" name="destination" value="<%= bus.getBusDestination() %>"/>
                  </div>

                </div>
                <div class="col-md-6 mb-2 pb-2">

                  <div class="form-outline d-flex justify-content-center">
                    <input type="text" id="phoneNumber" class="form-control-lg" placeholder="Enter The Ticket Price" name="price" value="<%= bus.getTicketPrice() %>"/>
                  </div>

                </div>
              </div>

              <div class="row">
                <div class="col-md-6 mb-2 pb-2">

                  <div class="form-outline d-flex justify-content-center">
                    <input type="date" id="emailAddress" class="form-control-lg" placeholder="Enter The Date" name="date" value="<%= bus.getDate() %>"/>
                  </div>

                </div>
                <div class="col-md-6 mb-2 pb-2">

                  <div class="form-outline d-flex justify-content-center">
                    <input type="text" id="phoneNumber" class="form-control-lg" placeholder="Enter The Time" name="time" value="<%= bus.getTime() %>"/>
                  </div>

                </div>
              </div>

              <div class="mt-2 pt-2 d-flex justify-content-center">
                <input class="btn btn-primary btn-lg" type="submit" value="Update Bus" />
              </div>

            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</body>
</html>