<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>

<h3>Welcome :${username }        <a href="#">logout</a></h3>



<ul class="navbar">
    <li><a href="DashBoard.jsp"><span>Dashboard</span></a></li>
	<li><a href="#"><span>Patient</span></a></li>
		<ul class="drpPatient">
			
			<li><a href="PatientAdd.jsp">Add Patient</a></li>
			<li><a href="PatientList.jsp">Patient List</a></li>
			
		</ul>	

	<li><a href="Report.jsp"><span>Report</span></a>
	<li><a href="MedicleHistory.jsp"><span>Medicle History</span></a>
	<li><a href="#"><span>Appointment</span></a></li>
		<ul class="drpAppointment">
			
			<li><a href="CreateAppointment.jsp">Create Appointment Shedule</a></li>
			<li><a href="AddDocterAppointment.jsp">Add Docter Appointment</a></li>
			
		</ul>	
	<li><a href="#"><span>Docter</span></a></li>
		<ul class="drpPatient">
			
			<li><a href="/MedicalRecordSystemSpringMVC/docterAdd">Add Docter</a></li>
			<li><a href="/MedicalRecordSystemSpringMVC/docterList">Docter List</a></li>
			
		</ul>
		
	</li>
	<li><a href="Setting.jsp"><span>Setting</span></a>
	
</ul>


</body>
</html>