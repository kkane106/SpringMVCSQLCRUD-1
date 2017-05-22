
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="master.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Current League of Legends Champions!</title>
</head>
<body>


	<!-- <form action="userChampionView.jsp" method="POST"></form> -->
	<!-- <form action="championsList.do" method="GET"></form> -->

	<h2>Current League of Legends Champions!</h2>
	<br>
	
	<form method="POST" action="addChampion.do">
	<h3>Add a Champion:</h3>
	<label>Champion Name: <input type="text" name="championName"></label>
	
	<select name="championRole">
	<option>Support</option>
	<option>Slayer</option>
	<option>Tank</option>
	<option>Fighter</option>
	<option>Marksman</option>
	<option>Mage</option>
	</select>
	
	<input type="submit" value="Add a Champion">
	
	</form> 
	<br>
	
	
	<form method="POST" action="removeChampion.do">
	<h3>Remove a Champion:</h3>
	<label>Champion Name: <input type="text" name="championName"></label>
	
	<input type="submit" value="Remove a Champion">
	</form> 
	<br>
	<br>

	
	
	
	
	
	
	
	<table>
		<c:forEach items="${champions}" var="champion">
			<tr>
				<td>${champion.championName}</td>
				<td>${champion.championRole}</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>