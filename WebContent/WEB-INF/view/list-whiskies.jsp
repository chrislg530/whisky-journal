<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>

<head>
	<title>Whisky Database</title>

	<!-- reference our style sheet -->

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css" />

</head>

<body>

<div id="wrapper">
	<div id="header">
		<h2>Whisky Journal</h2>
	</div>
</div>

<div id="container">

	<div id="content">

		<!-- put new button: Add Customer -->

		<input type="button" value="Add Whisky"
			   onclick="window.location.href='showFormForAdd'; return false;"
			   class="add-button"
		/>
		<!--  add a search box -->
		<form:form action="search" method="GET">
			Search for a Whisky: <input type="text" name="theSearchName" />

			<input type="submit" value="Search" class="add-button" />
		</form:form>

		<!--  add our html table here -->

		<table>
			<tr>
				<th>Whisky Name</th>
				<th>Age</th>
				<th>Distiller</th>
				<th>Origin</th>
				<th>Rating</th>
				<th>Action</th>
			</tr>

			<!-- loop over and print our whiskies -->
			<c:forEach var="tempWhisky" items="${whiskyEntries}">

				<!--- construct an "update" link with whisky id --->
				<c:url var="updateLink" value="/whisky/showFormForUpdate">
					<c:param name="whiskyId" value="${tempWhisky.id}" />
				</c:url>
				<!--- construct an "delete" link with whisky id --->
				<c:url var="deleteLink" value="/whisky/delete">
					<c:param name="whiskyId" value="${tempWhisky.id}" />
				</c:url>
				<!--- construct a link with whisky id --->
				<c:url var="detailLink" value="/whisky/whiskyEntry">
					<c:param name="whiskyId" value="${tempWhisky.id}" />
				</c:url>
				<tr>
					<td><a href="${detailLink}">${tempWhisky.name}</a></td>
					<td> ${tempWhisky.age} </td>
					<td> ${tempWhisky.distiller} </td>
					<td> ${tempWhisky.origin} </td>
					<td> ${tempWhisky.rating} </td>

					<td>
						<!-- display the update link --->
						<a href="${updateLink}">Update</a>
						|
						<a href="${deleteLink}"
							onclick="if(!(confirm('Are you sure you want to delete this whisky?'))) return false">Delete</a>
					</td>

				</tr>

			</c:forEach>

		</table>

	</div>

</div>


</body>

</html>









