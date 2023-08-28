<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
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
.img-fluid
{
   max-width: 100%;
   height: auto;
   margin-top:14vh; 
}
</style>
</head>
<body>
        <header>
  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg navbar-light fixed-top mask-custom shadow-0">
    <div class="container">
      <a class="navbar-brand" href="#!"><span style="color: #627996;">BusBookingSystem</span></a>
      <button class="navbar-toggler" type="button" data-mdb-toggle="collapse"
        data-mdb-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
        aria-label="Toggle navigation">
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto">
          <li class="nav-item">
            <a class="nav-link" href="HomePage.jsp">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="Admin.jsp">AdminLogin</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="User.jsp">UserLogin</a>
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

  <!--Section: Design Block-->
  <section>
    <!-- Intro -->
    <img src="abc.jpg" class="img-fluid" alt="Responsive image" />
    <!-- Intro -->
  </section>
  <!--Section: Design Block-->
</header>
        
</body>
</html>