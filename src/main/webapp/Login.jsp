<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    %>
    <% 
    String user=request.getParameter("username");
    String pass=request.getParameter("password");
    user=user==null ? "" : user;
    pass=pass==null ? "" : pass;
    String msg=request.getAttribute("msg").toString();
    boolean error=request.getAttribute("error").toString()=="true" ? true : false;
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="http://localhost:8000/JEE/assets/style.css"/>
<link rel="stylesheet" href="http://localhost:8000/JEE/assets/pico.min.css"/>
</head>
<body>

<header class="navbar2">
<nav>
  <ul>
    <li><div class="title">JEE</div></li>
  </ul>
  <ul>
    <li><a role="button" class="secondary" href="Home.html">Home</a></li>
    <li><a role="button" class="contrast outline" href="Login">Login</a></li>
  </ul>
</nav>
</header>


<main>
<form class="form" method="GET" action="Login">
<div class="message<%= error ? " error" : "" %>"><%= msg %></div>
<input type="text" name="username" placeholder="username" value="<%=user%>" aria-invalid="<%=msg=="" ? "": error%>"></input>
<input type="password" name="password" placeholder="********" value="<%=pass%>" aria-invalid="<%=msg=="" ? "": error%>"></input>
<input type="submit" value="Login"></input>
</form>
</main>


</body>
</html>