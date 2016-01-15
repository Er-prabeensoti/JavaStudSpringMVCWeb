<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%> --%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h2>Student Information</h2>
	<form:form method="POST" action="stud" modelAttribute="student">
		<table>
			<tr>
				<td><form:label path="firstName">First Name</form:label></td>
				<td><form:input path="firstName" /></td>
			</tr>
			<tr>
				<td><form:label path="lastName">Last Name</form:label></td>
				<td><form:input path="lastName" /></td>
			</tr>
			<tr>
				<td><form:label path="rollNo">Roll No</form:label></td>
				<td><form:input path="rollNo" /></td>
			</tr>
			<tr>
				<td><form:label path="subject">Subject</form:label></td>
				<td><form:input path="subject" /></td>
			</tr>
			<tr>
				<td><form:label path="collegeName">College Name</form:label></td>
				<td><form:input path="collegeName" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Submit" /></td>
			</tr>
		</table>
		<form:hidden path="id" />
	</form:form>

	<hr />

	Student Details:
	<table style="border-width: 1px solid">
		<thead>
		<tr>
			<th></th>
			<th>Name</th>
			<th>Roll No</th>
			<th>Subject</th>
			<th>College Name</th>
		</tr>
		</thead>
		<tbody>
			<c:forEach var="row" items="${studentList }">
				<tr>
					<td><input type="button" onclick="edit('${row.id }')"
						value="Edit" style="color: green" /> <input type="button"
						onclick="delete('${row.id }')" value="Delete" style="color: red" />
					</td>
					<td>${row.firstName }, ${row.lastName }</td>
					<td>${row.rollNo }</td>
					<td>${row.subject }</td>
					<td>${row.collegeName }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>