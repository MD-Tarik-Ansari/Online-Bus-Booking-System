<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add the Bus</title>
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
<!-- Navbar -->
  <nav class="navbar navbar-expand-lg navbar-light fixed-top mask-custom shadow-0">
    <div class="container">
      <a class="navbar-brand" href="#!"><span style="color: white;">AdminProfile</span></a>
      <button class="navbar-toggler" type="button" data-mdb-toggle="collapse"
        data-mdb-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
        aria-label="Toggle navigation">
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto">
          <li class="nav-item">
            <a class="nav-link" href="Admin.jsp" style="color: white">Admin</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="addBus.jsp" style="color: white">AddBus</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="display.jsp" style="color: white">DisplayBus</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="logout" style="color: white">Logout</a>
          </li>
          
          
        </ul>
        <ul class="navbar-nav d-flex flex-row">
          <li class="nav-item me-3 me-lg-0">
            <a class="nav-link" href="www.facebook.com">
              <i class="fab fa-facebook" style="color: blue;"></i>
            </a>
          </li>
          <li class="nav-item me-3 me-lg-0">
            <a class="nav-link" href="www.instagram.com">
              <i class="fab fa-instagram" style="color: #fb02dc;"></i>
            </a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <!-- Navbar -->
      <section class="vh-100 gradient-custom">
  <div class="container py-5 h-100">
    <div class="row justify-content-center align-items-center h-100">
      <div class="col-12 col-lg-9 col-xl-7">
        <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
          <div class="card-body p-4 p-md-3">
            <h3 class="mb-4 pb-4 pb-md-0 mb-md-4 align-items-center h-100 text-center">Add The Bus</h3>
            <form action="addbus" method="post">

              <div class="row">
                <div class="col-md-6 mb-3">

                  <div class="form-outline d-flex justify-content-center">
                    <input type="text" id="firstName" class="form-control-lg" placeholder="Enter The Bus No." name="busno"/>
                    
                  </div>

                </div>
                <div class="col-md-6 mb-3">

                  <div class="form-outline d-flex justify-content-center">
                    <input type="text" id="lastName" class="form-control-lg" placeholder="Enter The Bus Name" name="busname"/>
                  </div>

                </div>
              </div>

              <div class="row">
                <div class="col-md-6 mb-3 d-flex align-items-center">

                  <div class="form-outline datepicker w-100 d-flex justify-content-center">
                    <input type="text" class="form-control-lg" id="birthdayDate" placeholder="Enter The From City" name="fromcity"/>
                  </div>

                </div>

                  <div class="col-md-6 mb-3">

                  <div class="form-outline d-flex justify-content-center">
                    <input type="text" id="lastName" class="form-control-lg" placeholder="Enter The To City" name="tocity"/>

                  </div>

                </div>
              </div>

              <div class="row">
                <div class="col-md-6 mb-2 pb-2">

                  <div class="form-outline d-flex justify-content-center">
                    <input type="text" id="emailAddress" class="form-control-lg" placeholder="Enter The Destination" name="destination"/>
                  </div>

                </div>
                <div class="col-md-6 mb-2 pb-2">

                  <div class="form-outline d-flex justify-content-center">
                    <input type="text" id="phoneNumber" class="form-control-lg" placeholder="Enter The Ticket Price" name="price"/>
                  </div>

                </div>
              </div>

              <div class="row">
                <div class="col-md-6 mb-2 pb-2">

                  <div class="form-outline d-flex justify-content-center">
                    <input type="date" id="emailAddress" class="form-control-lg" placeholder="Enter The Date" name="date"/>
                  </div>

                </div>
                <div class="col-md-6 mb-2 pb-2">

                  <div class="form-outline d-flex justify-content-center">
                    <input type="text" id="phoneNumber" class="form-control-lg" placeholder="Enter The Time" name="time"/>
                  </div>

                </div>
              </div>

              <div class="mt-2 pt-2 d-flex justify-content-center">
                <input class="btn btn-primary btn-lg" type="submit" value="Add Bus" />
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