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

<head>
<meta charset="ISO-8859-1">

</head>

<body>
<header>
		<h1>Header</h1>
		<p>My supercool header</p>
	</header>
	<nav>
		<a class="active" href="Home.jsp">Home</a> <a href="About.jsp">About</a> <a
			href="Crud.jsp">Crud</a><a href="Test.jsp">Test</a>
</nav>	
<body> 
<aside>
<table id="asideTable">
<tr>
<th><span id="city"></span></th> <th><span></span></th> <th><span></span></th>
<th><span id="ipNbr"></span></th>
</tr> <tr>
<td><span id="degree"></span></td> <td><span id="weather"></span></td> <td><span></span></td> <td><span></span></td>
</tr> <tr>
<td colspan="4"><span id="sunrise"></span></td> </tr>
<tr>
<td colspan="4"><span id="sunset"></span></td>
</tr>
</table> </aside>
</body>
</html>
