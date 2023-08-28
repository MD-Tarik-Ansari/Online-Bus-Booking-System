<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>nav</title>
</head>
<body>
       <nav class="navbar navbar-expand-lg navbar-light bg-primary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#" style="color: white">AdminProfile</a>
    <button
      class="navbar-toggler"
      type="button"
      data-mdb-toggle="collapse"
      data-mdb-target="#navbarNav"
      aria-controls="navbarNav"
      aria-expanded="false"
      aria-label="Toggle navigation"
    >
      <i class="fas fa-bars"></i>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="Admin.jsp" style="color: white">Admin</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="addBus.jsp" style="color: white">AddBus</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="display.jsp" style="color: white">DisplayBus</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="logout" style="color: white">Logout</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
</body>
</html>