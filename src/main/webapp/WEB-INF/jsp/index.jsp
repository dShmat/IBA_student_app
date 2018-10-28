<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>

<html>
<body>
	<form action="/student-app/students" method="POST">
		<input type="text" name="firstName" placeholder="first name">
		<input type="text" name="secondName" placeholder="second name">
		<input type="text" name="groupNumber" placeholder="group">
		<input type="submit">
	</form>

	<table align=center>
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
