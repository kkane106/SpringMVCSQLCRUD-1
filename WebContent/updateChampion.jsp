<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="master.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update A Champion</title>
</head>
<body>

	<form method="POST" action="updateChampion.do">
<input type="hidden" name="id" value="${champion.id}">
		<h3>Update a Champion:</h3>
		<label>Champion Name: <input type="text" name="championName" value="${champion.championName}"></label>
		<br> Champion Role:<select name="championRole">
			<option>Support</option>
			<option>Slayer</option>
			<option>Tank</option>
			<option>Fighter</option>
			<option>Marksman</option>
			<option>Mage</option>
		</select> 
		<br> 
		<label>Champion Description: <input type="text"
			name="championDescription"></label> 
			<br> 
			<label>Champion Image: <input type="text" name="championImage">
		</label> 
		<br> 
		<input type="submit" value="Update the Champion">
	</form>
	<br>
	<br>

	<form action="userChampionView.do" method="GET">
		Return to the Champion page: <input type="submit" value="Go now!">
	</form>

	<form action="index.do" method="GET">
		Return to the Home: <input type="submit" value="Go now!">
	</form>

</body>
</html>