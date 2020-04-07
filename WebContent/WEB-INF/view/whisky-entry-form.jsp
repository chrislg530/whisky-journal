<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>
	<title>Save Whisky Entry</title>

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css">

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/add-whisky-style.css">
</head>

<body>
	
	<div id="wrapper">
		<div id="header">
			<h2>Whisky Journal</h2>
		</div>
	</div>

	<div id="container">
		<h3>Save Whisky</h3>
	
		<form:form action="saveWhisky" modelAttribute="whiskyEntry" method="POST">

			<!-- associate data with whisky id -->
			<form:hidden path="id" />
		
			<table>
				<tbody>
					<tr>
						<td><label>Name:</label></td>
						<td><form:input path="name" /></td>
					</tr>
				
					<tr>
						<td><label>Age:</label></td>
						<td><form:input path="age" /></td>
					</tr>

					<tr>
						<td><label>Distiller:</label></td>
						<td><form:input path="distiller" /></td>
					</tr>
					<tr>
						<td><label>Origin:</label></td>
						<td><form:input path="origin" /></td>
					</tr>

					<tr>
						<td><label>Last name:</label></td>
						<td><form:input path="rating" /></td>
					</tr>

					<tr>
						<td><label>Email:</label></td>
						<td><form:input path="email" /></td>
					</tr>

					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save" /></td>
					</tr>

				
				</tbody>
			</table>
		
		
		</form:form>
	
		<div style="clear; both;"></div>
		
		<p>
			<a href="${pageContext.request.contextPath}/customer/list">Back to List</a>
		</p>
	
	</div>

</body>

</html>










