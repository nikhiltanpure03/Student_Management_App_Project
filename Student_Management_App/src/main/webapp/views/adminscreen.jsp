<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB"
	crossorigin="anonymous">
<style type="text/css">
.enroll {
	background-image: url("images/newBackenroll.jpg");
	background-size: cover;
	background-repeat: no-repeat;
}

.heading {
	font-family: cursive;
	text-align: center;
	margin-bottom: 20px;
}

.form {
	width: 200px;
}

.view {
	background-image: url("images/enroling2.jpg");
	background-size: cover;
	background-repeat: no-repeat;
}

table {
	background-color: transparent;
}
</style>
</head>
<body>
	<div class="card">
		<nav class="d-flex justify-content-between "
			style="background-color: transparent;">
			<img src="images/CJClogo.jpg" width="100px" height="50px">
			<div class="pt-2">
				<a href="#enroll">
					<button class="btn btn-outline-primary">Enroll Student</button>
				</a> <a href="#view">
					<button class="btn btn-outline-primary">View Student</button>
				</a> <a href="/">
					<button class="btn btn-outline-primary">Logout</button>
				</a>
			</div>
		</nav>
		<section class=" enroll vh-100 gradient-custom  mt-2" id="enroll">
			<div class="container h-100">
				<div class="row justify-content-center h-100 w-75">
					<div class="col-12 col-lg-9 col-xl-7">
						<div class="card bg-transparent card-registration mt-0"
							style="border-radius: 15px;">
							<div class="card-body mt-0 ">
								<h3 class="heading" style="color: white;">Student
									Enrollment Form</h3>
								<form action="enroll_student">
									<div class="row ">
										<div class="col-md-6 mb-2">
											<div class="form-outline">
												<label class="form-label" style="color: white;"
													for="firstName">First Full Name</label> <input
													style="color: white; background-color: transparent;"
													type="text" id="firstName"
													class="form-control form-control-sm "
													name="studentFullName">
											</div>
										</div>
										<div class="col-md-6 mb-2">
											<div class="form-outline">
												<label class="form-label" style="color: white;"
													for="lastName">Student Email</label> <input
													style="color: white; background-color: transparent;"
													type="email" id="lastName"
													class="form-control form-control-sm " name="studentEmail">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6 mb-2 d-flex align-items-center">
											<div class="form-outline datepicker w-100">
												<label for="age" style="color: white;" class="form-label">Student
													Age</label> <input
													style="color: white; background-color: transparent;"
													type="number" class="form-control form-control-sm "
													id="age" name="studentAge">
											</div>
										</div>
										<div class="col-md-6 mb-2 pb-2">
											<div class="form-outline">
												<label class="form-label" style="color: white;" for="cn">Student
													College Name</label> <input
													style="color: white; background-color: transparent;"
													type="text" id="cn" class="form-control form-control-sm "
													name="studentCollegeName">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6 mb-2 pb-2">
											<div class="form-outline">
												<label class="form-label" style="color: white;"
													for="emailAddress">Fees Paid</label> <input
													style="color: white; background-color: transparent;"
													type="number" id="emailAddress"
													class="form-control form-control-sm " name="feesPaid">
											</div>
										</div>
										<div class="col-md-6 mb-2">
											<h6 class="mb-2 pb-1" style="color: white;">Student
												Course :</h6>
											<div class="form-check form-check-inline">
												<label class="form-check-label" style="color: white;"
													for="java">Java</label> <input
													class="form-check-input bg-transparent" type="radio"
													name="StudentCourse" id="java" value="Java" checked>
											</div>
											<div class="form-check form-check-inline">
												<label class="form-check-label " style="color: white;"
													for="python">Python</label> <input class="form-check-input"
													type="radio" name="StudentCourse" id="python"
													value="Python" />
											</div>
											<div class="form-check form-check-inline">
												<label class="form-check-label" style="color: white;"
													for="testing">Testing</label> <input
													class="form-check-input bg-transparent" type="radio"
													name="StudentCourse" id="testing" value="Testing" />
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col">
											<select class="select form-control-sm bg-transparent"
												name="batchMode">
												<option value="#" disabled>Select Batch Mode</option>
												<option value="Online">Online</option>
												<option value="Offline">Offline</option>
											</select> <label class="form-label select-label bg-transparent"
												style="color: white;">Batch Mode</label>
										</div>
										<div class="col">
											<select class="select form-control-sm bg-transparent"
												name="batchNumber">
												<option value="#" disabled>Select Batch Number</option>
												<option value="FDJ-191">FDJ-191</option>
												<option value="REG-191">REG-191</option>
												<option value="FDJ-192">FDJ-192</option>
												<option value="REG-192">REG-192</option>
												<option value="FDJ-193">FDJ-193</option>
												<option value="REG-193">REG-193</option>
												<option value="FDJ-194">FDJ-194</option>
												<option value="REG-194">REG-194</option>
												<option value="FDJ-195">FDJ-195</option>
												<option value="REG-195">REG-195</option>
												<option value="FDJ-196">FDJ-196</option>
												<option value="REG-196">REG-196</option>
											</select> <label class="form-label select-label" style="color: white;">Batch
												Number</label>
										</div>
									</div>
									<div class="mt-2 pt-2 d-flex justify-content-center">
										<input class="btn btn-primary btn-lg" type="submit"
											value="Submit" />
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="view" style="height: 530px" id="view">
			<h1 class="text-center " style="color: white;">Student Details</h1>
			<div class="text-center w-100">
				<form action="search" class="w-100">
					<select class="select form-control-sm border bg-transparent"
						name="batchNumber">
						<option value="#" disabled>Select Batch Number</option>
						<option value="FDJ-191">FDJ-191</option>
						<option value="REG-191">REG-191</option>
						<option value="FDJ-192">FDJ-192</option>
						<option value="REG-192">REG-192</option>
						<option value="FDJ-193">FDJ-193</option>
						<option value="REG-193">REG-193</option>
						<option value="FDJ-194">FDJ-194</option>
						<option value="REG-194">REG-194</option>
						<option value="FDJ-195">FDJ-195</option>
						<option value="REG-195">REG-195</option>
						<option value="FDJ-196">FDJ-196</option>
						<option value="REG-196">REG-196</option>

					</select>
					<button class="btn btn-outline-primary mb-1">Search</button>
				</form>
				<marquee>
					<h1>${message}</h1>
				</marquee>
			</div>
			<table class="table table-hover bg-transparent" style="font-size: small">
				<thead style="background-color: transparent">
					<tr>
						<th>ID</th>
						<th>Student Name</th>
						<th>Student Email</th>
						<th>Age</th>
						<th>College Name</th>
						<th>Course Name</th>
						<th>Batch No</th>
						<th>Mode</th>
						<th>Fees Paid</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody style="background-color: transparent">
					<c:forEach items="${data}" var="s">
						<tr>
							<td>${s.studentId}</td>
							<td>${s.studentFullName}</td>
							<td>${s.studentEmail}</td>
							<td>${s.studentAge}</td>
							<td>${s.studentCollegeName}</td>
							<td>${s.studentCourse}</td>
							<td>${s.batchNumber}</td>
							<td>${s.batchMode}</td>
							<td>${s.feesPaid}</td>
							<td>
								<div class="btn-group btn-group-sm" role="grouparia-label="...">
									<button class="btn btn-outline-success">Pay Fees</button>
									<button class="btn btn-outline-primary">Shift Batch</button>
									<a href="delete?id=${s.studentId}"class="btn btn-outline-danger">Remove</a>
								</div>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</section>
	</div>
</body>
</html>