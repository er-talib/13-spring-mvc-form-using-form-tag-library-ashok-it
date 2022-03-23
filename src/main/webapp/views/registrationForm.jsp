<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register Form</title>
</head>
<body>


	<form:form action="/save" modelAttribute="student" method="post">
		<table>
			<tr>
				<td>Roll No :</td>
				<td><form:input path="stuRollNumder" />
			</tr>

			<tr>
				<td>Name</td>
				<td><form:input path="stuName" />
			</tr>

			<tr>
				<td>Email</td>
				<td><form:input path="email" />
			</tr>

			<tr>
				<td>Password</td>
				<td><form:password path="password" />
			</tr>

			<tr>
				<td>Phone No</td>
				<td><form:input path="phone" />
			</tr>

			<tr>
				<td>Gender</td>
				<td><form:radiobutton path="gender" value="Male" /> Male <form:radiobutton
						path="gender" value="Female" />Female</td>
			</tr>

			<tr>
				<td>Course :</td>
				<td><form:select path="course">
						<form:option value="">-Select-</form:option>
						<form:option value="Java">Java</form:option>
						<form:option value="Python">Python</form:option>
						<form:option value="Spring Boot">Spring Boot</form:option>
					</form:select></td>

			</tr>

			<tr>
				<td>Preferrable Timings :</td>
				<td><form:checkbox path="preferrableTimings" value="Morning" />
					Morning <form:checkbox path="preferrableTimings" value="Evening" />
					Evening</td>
			</tr>

			<tr>
				<td><input type="reset" value="Reset">
				<td><input type="submit" value="Register">

			</tr>
		</table>
	</form:form>

</body>
</html>