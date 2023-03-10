<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Page</title>

<%@include file="all_component/allcss.jsp" %>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>

	<div class="container-fluid bg-color ">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4">
					<div class="card-header text-center text-white bg-custom">
						<i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
						<H4>Registration</H4>
					</div>
					<%
					String regMsg = (String) session.getAttribute("reg-sucess");
					if (regMsg != null) {
					%>

					<div class="alert alert-success" role="alert"><%=regMsg%>Login<a
							href="login.jsp">clickHere</a>
					</div>

					<%
					session.removeAttribute("reg-sucess");
					}
					%>
					<%
					String FailedMsg = (String) session.getAttribute("reg-Failed");
					if (FailedMsg != null) {
					%>

					<div class="alert alert-danger" role="alert"><%=FailedMsg%></div>

					<%
					session.removeAttribute("reg-Failed");
					}
					%>



					<div class="card-body">

						<form action="UserServlet" method="post">
						
						    <div class="form-group">
								<label for="exampleInputFullName">Full Name</label> <input
									type="text" class="form-control" id="exampleInputFullName"
									aria-describedby="emailHelp" name="fname" placeholder="Full Name">
								<small id="emailHelp" class="form-text text-muted"></small>
							</div>
							
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="uemail" placeholder="Enter email">
								<small id="emailHelp" class="form-text text-muted">We'll
									never share your email with anyone else.</small>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									name="upassword" placeholder="Password">
							</div>
							<button type="submit" class="btn btn-primary badge-pill btn-block ">Register</button>
						</form>

					</div>

				</div>



			</div>

		</div>



	</div>
	<%@include file="all_component/footer.jsp"%>

</body>
</html>