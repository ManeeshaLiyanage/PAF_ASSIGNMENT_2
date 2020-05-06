$(document).ready(function() {
	if ($("#alertSuccess").text().trim() == "") {
		$("#alertSuccess").hide();
	}
	$("#alertError").hide();
});

// SAVE --------------------------------------------------------
$(document).on("click", "#btnSave", function(event) {

	// Clear alerts---------------------
	$("#alertSuccess").text("");
	$("#alertSuccess").hide();
	$("#alertError").text("");
	$("#alertError").hide();

	// Form Validation -----------------------
	var stat = validateAppointmentForm();
	if (stat != true) {
		$("#alertError").text(stat);
		$("#alertError").show();
		return;
	}

	// If valid------------------------
	// $("#formAppointment").submit();
	var type = ($("#hidAppointmentIDSave").val() == "") ? "POST" : "PUT";

	$.ajax({
		url : "AppointmentsAPI",
		type : type,
		data : $("#formAppointment").serialize(),
		dataType : "text",
		complete : function(response, status) {
			onAppointmentSaveComplete(response.responseText, status);
		}
	});

});

// DELETE -------------------------------------------
$(document).on("click", ".btnRemove", function(event) {
	$.ajax({
		url : "AppointmentsAPI",
		type : "DELETE",
		data : "appointment_ID=" + $(this).data("ID"),
		dataType : "text",
		complete : function(response, status) {
			onItemDeleteComplete(response.responseText, status);
		}
	});
});

function onAppointmentDeleteComplete(response, status) {
	if (status == "success") {
		var resultSet = JSON.parse(response);

		if (resultSet.status.trim() == "success") {
			$("#alertSuccess").text("Successfully deleted.");
			$("#alertSuccess").show();

			$("#divAppointmentGrid").html(resultSet.data);
		} else if (resultSet.status.trim() == "error") {
			$("#alertError").text(resultSet.data);
			$("#alertError").show();
		}

	} else if (status == "error") {
		$("#alertError").text("Error while deleting.");
		$("#alertError").show();
	} else {
		$("#alertError").text("Unknown error while deleting..");
		$("#alertError").show();
	}
}

function onAppointmentSaveComplete(response, status) {

	if (status == "success") {
		var resultSet = JSON.parse(response);

		if (resultSet.status.trim() == "success") {
			$("#alertSuccess").text("Successfully saved.");
			$("#alertSuccess").show();

			$("#divAppointmentGrid").html(resultSet.data);
		} else if (resultSet.status.trim() == "error") {
			$("#alertError").text(resultSet.data);
			$("#alertError").show();
		}

	} else if (status == "error") {
		$("#alertError").text("Error while saving.");
		$("#alertError").show();
	} else {
		$("#alertError").text("Unknown error while saving..");
		$("#alertError").show();
	}

	$("#hidAppointmentIDSave").val("");
	$("#formAppointment")[0].reset();

}

// UPDATE -----------------------------------
$(document)
		.on(
				"click",
				".btnUpdate",
				function(event) {
					$("#hidAppointmentIDSave").val(
							$(this).closest("tr").find('#hidAppointIDUpdate')
									.val());
					$("#appointment_Code").val(
							$(this).closest("tr").find('td:eq(0)').text());
					$("#patient_id").val(
							$(this).closest("tr").find('td:eq(1)').text());
					$("#visit_ID").val(
							$(this).closest("tr").find('td:eq(2)').text());
					$("#status").val(
							$(this).closest("tr").find('td:eq(3)').text());
				});

// CLIENT-MODEL------------------------------
function validateAppointmentForm() {
	// CODE
	if ($("#appointment_Code").val().trim() == "") {
		return "Insert Appointment Code.";
	}

	// patient id
	if ($("#patient_id").val().trim() == "") {
		return "Insert patient id.";
	}

	// visit ID
	if ($("#visit_ID").val().trim() == "") {
		return "Insert visit id.";
	}

	// status
	if ($("#status").val().trim() == "") {
		return "Insert Status.";
	}

	return true;
}
