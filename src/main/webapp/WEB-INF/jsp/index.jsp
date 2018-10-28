<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

<html>
<body>
	<form action="/student-app/students" method="POST">
		<input type="text" name="firstName" placeholder="first name">
		<input type="text" name="secondName" placeholder="second name">
		<input type="text" name="groupNumber" placeholder="group">
		<input type="submit">
	</form>

	<table >
		<thead>
			<tr>
				<th>First Name  |</th>
				<th> Second Name |</th>
				<th> Group Number |</th>
				<th> Average Mark |</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="student" items="${students}">
			
			<tr>
				<td>${student.firstName}</td>
				<td>${student.secondName}</td>
				<td align=center>${student.groupNumber}</td>
				<td align=center>${student.avgMark}</td>
			</tr>		
			</c:forEach>
			
		</tbody>

	</table>
</body>
</html>
