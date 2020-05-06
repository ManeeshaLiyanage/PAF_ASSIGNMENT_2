/*$(document).ready(function() {
	$("#alertSuccess").hide();
	$("#alertError").hide();
});

// SAVE ----------------------------------------------------------------

$(document)
		.on(
				"click",
				"#btnSave",
				function(event) {

					// Clear status msges---------------------
					$("#alertSuccess").text("");
					$("#alertSuccess").hide();
					$("#alertError").text("");
					$("#alertError").hide();

					// Form validation-------------------
					var status = validateItemForm();

					// If not valid
					if (status != true) {
						$("#alertError").text(status);
						$("#alertError").show();
						return;
					}

					// If valid
					var appointment = getAppointmentCard($("#txtAppointment")
							.val().trim(), $("#txtCode").val().trim(), $(
							"#txtPatient").val().trim(), $("#txtVisit").val()
							.trim(), $("#ddlStatus").val());

					$("#colAppointment").append(appointment);

					$("#alertSuccess").text("Saved successfully.");
					$("#alertSuccess").show();
					$("#formAppointment")[0].reset();

				});

// REMOVE ----------------------------------------

$(document).on("click", ".remove", function(event) {

	$(this).closest(".appointment").remove();

	$("#alertSuccess").text("Removed successfully.");
	$("#alertSuccess").show();

});

// CLIENT MODEL ----------------------------------
function validateItemForm() {

	// Appointment ID
	if ($("#txtAppointment").val().trim() == "") {
		return "Insert Appointment ID.";
	}

	// Appointment Code
	if ($("#txtCode").val().trim() == "") {
		return "Insert Appointment Code.";
	}

	// Patient ID
	if ($("#txtPatient").val().trim() == "") {
		return "Insert Patient ID.";
	}

	// Visit ID
	if ($("#txtVisit").val().trim() == "") {
		return "Insert Visit ID.";
	}

	// Status
	if ($("#ddlStatus").val() == "0") {
		return "Select Status.";
	}

	return true;
}

function getAppointmentCard(Appointment, Code, Patient, Visit, Status) {

	// var title = (gender == "Male") ? "Mr." : "Ms.";

	var statusNumber = "";

	switch (Status) {
	case "1":
		statusNumber = "1st";
		break;
	case "2":
		statusNumber = "2nd";
		break;
	}

	var appointment = ""; // Generate card
	appointment += "<div class=\"appointment card bg-light m-2\" style=\"max-width: 10rem;    float: left;\">";
	appointment += "<div class=\"card-body\">";
	appointment += Appointment + " " + Code + "" + Patient + "" + Visit + ",";
	appointment += "<br>";
	appointment += statusNumber + " Status";
	appointment += "</div>";
	appointment += "<input type=\"button\" value=\"Remove\"         class=\"btn btn-danger remove\">";
	appointment += "</div>";

	return appointment;
}
*/