<%@page import = "controller.AppointmentDBHandler" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%-- <%
	//Initialize
session.setAttribute("statusMsg", "");
System.out.println("Trying to process..");

//SAVE----------------------------------------------------
if (request.getParameter("appointment_Code") != null) {
	Appointments appointObj = new Appointments();
	String stsMsg = "";

	//Insert --------------------------------------------
	if (request.getParameter("hidAppointmentIDSave") == "") {
		stsMsg = appointObj.insertAppointment(request.getParameter("appointment_Code"),
		request.getParameter("patient_id"), request.getParameter("visit_ID"), request.getParameter("status"));
	}

	else//Update----------------------------------------
	{
		stsMsg = appointObj.updateItem(request.getParameter("hidAppointmentIDSave"),
		request.getParameter("appointment_Code"), request.getParameter("patient_id"),
		request.getParameter("visit_ID"), request.getParameter("status"));
	}

	session.setAttribute("statusMsg", stsMsg);
}

//Delete -----------------------------------------------
if (request.getParameter("hidAppointDelete") != null) {
	Appointments appointObj = new Appointments();
	String stsMsg = appointObj.deleteAppointment(request.getParameter("hidAppointDelete"));
	session.setAttribute("statusMsg", stsMsg);
}
%> --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Appointment Management</title>
<link rel="stylesheet" href="views/bootstrap.min.css">
<script src="components/jquery-3.2.1.min.js"></script>
<script src="components/appointment.js"></script>
</head>
<body>

	<div class="container">

		<div class="row">
			<div class="col-8">

				<h1>Appointment Management</h1>
				<form id="formAppointment" name="formAppointment" method="post"
					action="appointment.jsp">
					<!-- Appointment ID: <input 
			id="appointID" name="appointID" type="text"
			class="form-control form-control-sm"> <br>  -->

					Appointment Code: 
					<input id="appointment_Code" name="appointment_Code" type="text"
								class="form-control form-control-sm"> 
					
					<br> Patient ID: 
					<input id="patient_id" name="patient_id" type="text"
								class="form-control form-control-sm"> 
								
					<br> Visit ID:
					<input id="visit_ID" name="visit_ID" type="text"
								class="form-control form-control-sm"> 
								
					<br> Status: 
					<input id="status" name="status" type="text"
								class="form-control form-control-sm"> 
								
					<br> 
					<input
						id="btnSave" name="btnSave" type="button" value="Save" onclick="myFunction('Harry Potter','Wizard')"
								class="btn btn-primary"> 
					<input type="hidden" id="hidAppointmentIDSave" 
								name="hidAppointmentIDSave" value="">
				</form>	
					<div id="alertSuccess" class="alert alert-success"></div>
					<%-- <%
						out.print(session.getAttribute("statusMsg"));
					%> --%>
					<div id="alertError" class="alert alert-danger"></div>

					<br>
					
					<div id = "divAppointmentGrid">
						<%
							AppointmentDBHandler appointObj = new AppointmentDBHandler();
							out.print(appointObj.readAppointment());
						%>
					</div>

			</div>
		</div>
	</div>
</body>
</html>