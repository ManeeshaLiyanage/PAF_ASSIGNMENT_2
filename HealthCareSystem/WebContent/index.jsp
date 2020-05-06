<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Appointment</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/main.js"></script>
</head>
<body>
	<div class="container">

		<div class="row">
			<div class="col-8">

				<h1 class="m-3">Appointment Form</h1>

				<form id="formAppointment">

					<!-- Appointment ID -->
					<div class="input-group input-group-sm mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="lblAppointment">Appointment
								ID: </span>
						</div>
						<input type="text" id="txtAppointment" name="txtAppointment">
					</div>

					<!-- Appointment code -->
					<div class="input-group input-group-sm mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="lblCode">Appointment
								code: </span>
						</div>
						<input type="text" id="txtCode" name="txtCode">
					</div>

					<!-- Patient ID -->
					<div class="input-group input-group-sm mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="lblPatient">Patient ID:
							</span>
						</div>
						<input type="text" id="txtPatient" name="txtPatient">
					</div>

					<!-- visit ID -->
					<div class="input-group input-group-sm mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="lblVisit">Visit ID: </span>
						</div>
						<input type="text" id="txtVisit" name="txtVisit">
					</div>

					<!-- status -->
					<div class="input-group input-group-sm mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="lblStatus">Status: </span>
						</div>
						<select id="ddlStatus" name="ddlStatus">
							<option value="0">--Select status--</option>
							<option value="1">Available</option>
							<option value="2">Not-Available</option>
						</select>
					</div>

					<div id="alertSuccess" class="alert alert-success"></div>
					<div id="alertError" class="alert alert-danger"></div>

					<input type="button" id="btnSave" value="Save"
						class="btn btn-primary">
				</form>
			</div>
		</div>
		<br>

		<div class="row">
			<div class="col-12" id="colAppointment"></div>
		</div>

	</div>
</body>
</html> --%>