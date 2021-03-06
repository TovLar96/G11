<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="org.ics.ejb.GymMember"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>
<script src="js.js"></script>
<link rel="stylesheet" type="text/css" href="mystyle.css">

</head>
<body>
	<header>
		<h1>Header</h1>
		<p>My supercool header</p>
	</header>
	<nav>
		<a href="Home.jsp">Home</a> <a href="About.jsp">About</a> <a
			class="active" href="Crud.jsp">Test</a>

	</nav>
	<section id="main">
		<p>Create, Read, Update or Delete</p>

		<section id="subsection">
			<form name="gymMemberRegistration"
				id="GymMemberRegistration"
				>
				<fieldset id="GymMemberFS">
					<legend>Add Gym Member:</legend>
					Full name:<br> <input type="text" name="name" id="name" >
					<br> Email:<br> <input type="text" name="email"
						id="email" >
					<br> Phone number:<br> <input
						type="text" name="phoneNumber" id="phoneNumber" > <br>
					Address:<br> <input type="text" name="address" id="address" >
				</fieldset>
			</form>
		</section>
		<br> <input type="button" value="Create Gym Member" name="createGymMember" id="CreateGymMember">
			<br> <input type="button" value="Update Gym Member" name="UpdateGymMember" id="UpdateGymMember">
			<br><input type="text" name="memberId" id="memberId">
			<br><input type="button" name="find"  id="find" value="find by memberId" />
			<br><input type="button" name="findAll"  id="findAll" value="find all" />
		    <br><input type="button" name="deleteByMemberId" id"deleteByMemberId" value="delete by memberid" />
		    <br><textarea id="show" rows="4" cols="50">
					</textarea>
		<section id="subsection">
		<form name="trainingSessionRegistration"
				id="TrainingSessionRegistration"
				action="ControllerServlet"
				method= POST
				>
			<fieldset id="TrainingSessionFS">
				<legend>Add TrainingSession:</legend>
				<label for="instructor">Choose an instructor:</label> <select
					id="instructor" name="instructor"required>
					<option value="Lovisa">Lovisa</option>
					<option value="Lena">Lena</option>
					<option value="Tove">Tove</option>
					<option value="Lisa">Lisa</option>
				</select><br>
				<br> <label for="startDate">Start time:</label> 
				<input type="date"
					id="startDate" name="startDate" value="2018-07-22" min="2018-01-01"
					max="2021-01-01" required>
 				<legend>Select hour to start:</legend>
 				<label for="startTime">Choose a time:</label> 
 				<select id="startTime" required name="startTime">
					<option value="10:00">10:00</option>
					<option value="11:00">11:00</option>
					<option value="12:00">12:00</option>
					<option value="13:00">13:00</option>
					<option value="14:00">14:00</option>
					<option value="15:00">15:00</option>
					<option value="16:00">16:00</option>
					<option value="17:00">17:00</option>
				</select><br>
				<br> <label for="type">Choose an session type:</label> <select
					id="type" name="type"required>
					<option value="spinning">spinning</option>
					<option value="crossfit">crossfit</option>
				</select><br>
				<br> <label for="roomNumber">Choose an room number:</label> <select
					id="roomNumber" name="roomNumber"required>
					<option value="EC01">EC01</option>
					<option value="EC101">EC101</option>
				</select><br>
				<br> <input type="submit" value="Create Training Session" name="button_clicked">
				<%! String s1 = ""; %>
    <span class="error">${messages.alreadyExists}</span>
		</fieldset>
		</form>
		
		</section>
		<section id="subsection">
		<form name="BookingRegistration"
				id="BookingRegistration"
				action="ControllerServlet"
				method= POST
				>
			<fieldset id="BookingFS">
				<legend>Add Gym Member:</legend>
				Full name:<br> <input type="text" name="name" id="name" required>
				<br> Email:<br> <input type="text" name="email" id="email" required>
				<br> Phone number:<br> <input type="text"
					name="phoneNumber" id="phoneNumber" required> <br> Address:<br>
				<input type="text" name="address" id="address" required> <br> <input
					type="submit" value="Create Gym Member">
			</fieldset>
			</form>
		</section>
	</section>

</body>
</html>