<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>League of Legends Champions</title>
</head>
<body>
	<h2>Welcome to League of Legends Champions!</h2>
	<form method="POST" action="championList.do"></form>
	
	<label>What is the Champion's name?:<input type="text" name="userName"></label>
	<br>
	<label>What is your Monthly Income?:<input type="text" name="championType"></label>
	<br>
	
</body>
</html>




	<!-- <a href="nameForm.html">Get State By Name</a><br/>
<a href="abbrevForm.html">Get State By Abbreviation</a><br/>
<a href="newState.html">Add State</a><br/>
<br> -->


	<!-- Browse all 50 States alphabetically with the back and next buttons: -->
	<%-- <%@ include file="/WEB-INF/inc/state-info.jsp" %> --%>
	<!-- 
		<form action="back.do" method="get">
			<input type="hidden" name="back" value="-1" />
			<button type="submit" class="backButton">
				 <img src="backArrow.png" alt="backArrow" /> 
			</button>
		</form>
	
	

	
		<form action="next.do" method="get">
			<input type="hidden" name="next" value="1" />
			<button type="submit" class="nextButton">
				 <img src="forwardArrow.png" alt="forwardArrow" />
			</button>
		</form> -->