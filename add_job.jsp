<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<!-- This is jstl url -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_component/all_css.jsp"%>
</head>
<body style="background-color: #F0f1f2;">
<!-- This condition is use to privacy purpose when anyone access to the any page like admin.jsp,add_jobs.jsp,etc this condition is redirect the user to the login page  -->
<c:if test="${userobj.role ne 'admin' }">
<c:redirect url="login.jsp"></c:redirect>
</c:if>

	<%@include file="all_component/navbar.jsp"%>

	<div class="container p-2">
		<div class="col-md-10 offset-md-1">
			<div class="card">
				<div class="card-body">
					<div class="text-center text-success">
						<i class="fas fa-user-friends fa-3x"></i>

						<c:if test="${not empty succMsg }">
							<div class="alert alert-success" role=" alert">${ succMsg}</div>
							<c:remove var="succMsg" />

						</c:if>


						<h5>Add Job</h5>
					</div>
					<form action="add_job" method="post">
						<div class="form-group">

							<label>Enter Title</label> <input type="text" name="title"
								required class="form-control">
						</div>
						<div class="form-row">
							<div class="form-group col-md-4">
								<label>Location</label> <select name="Location"
									class="custom-select" id="inlineformCustomSelectPref">
									<option selected>Choose...</option>
									<option value="Odisha">Odisha</option>
									<option value="Maharashtra">Maharashtra</option>
									<option value="Jharkhand">Jharkhand</option>
									<option value="Delhi">Delhi</option>
									<option value="Mumbai">Mumbai</option>
									<option value="Chennai">Chennai</option>
									<option value="Hydrabad">Hydrabad</option>
									<option value="Gujurat">Gujurat</option>
								</select>
							</div>
							<div class="form-group col-md-4">
								<label>Category</label> <select class="custom-select"
									id="inlineformCustomSelectPref" name="category">
									<option selected>Choose...</option>
									<option value="IT">IT</option>
									<option value="Developer">Developer</option>
									<option value="Banking">Banking</option>
									<option value="Engineer">Engineer</option>
									<option value="Teacher">Teacher</option>
								</select>
							</div>
							<div class="form-group col-md-4">
								<label>Status</label> <select class="form-control" name="status">
									<option class="Active" value="Active">Active</option>
									<option class="Inactive" value="Inactive">Inactive</option>
								</select>

							</div>
						</div>
						<div class="form-group">
							<label>Enter Description</label>
							<textarea required rows="6" cols="" name="desc"
								class="form-control"></textarea>
						</div>

						<button class="btn btn-success">Publish Job</button>

					</form>


				</div>


			</div>

		</div>


	</div>

</body>
</html>