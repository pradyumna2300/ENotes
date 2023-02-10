<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.back-img{
background:url("img/bgv.png");
width:100%;
height:80vh;
background-repeat:no-repeat;
background-size:cover;
/* background-position: center top;*/
}
</style>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<%@include file="all_component/allcss.jsp" %>
</head>
<body>
<%@include file="all_component/navbar.jsp" %>

<div class="text-center">
<h1 class="text-black"><i class="fa fa-book" aria-hidden="true"></i>ENotes Save your any thoughts on any device but in same place</h1>
<a href="login.jsp" class="btn btn-dark">Login</a>
<a href="register.jsp" class="btn btn-dark">Register</a>
</div>

<div class="container-fluid back-img"></div>


<%@include file="all_component/footer.jsp" %>
</body>
</html>