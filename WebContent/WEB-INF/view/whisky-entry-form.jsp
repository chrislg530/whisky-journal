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
						<td><form:input path="name" required="required"/></td>
					</tr>
					<tr>
						<td><label>Age:</label></td>
						<td><form:input path="age" required="required"/></td>
					</tr>
					<tr>
						<td><label>Distiller:</label></td>
						<td><form:input path="distiller" required="required"/></td>
					</tr>
					<tr>
						<td><label>Origin:</label></td>
						<td><form:input path="origin" required="required"/></td>
					</tr>
					<tr>
						<td><label>Rating:</label></td>
						<td><form:select path="rating" required="required">
							<form:option value="0"/>
							<form:option value="1"/>
							<form:option value="2"/>
							<form:option value="3"/>
							<form:option value="4"/>
							<form:option value="5"/>
						</form:select></td> <!-- to add -->
					</tr>

					<tr>
						<td><label>Buy it:</label></td>
						<td><form:checkbox path="buy" /></td>
						<td><label>Gift it:</label></td>
						<td><form:checkbox path="gift" /></td>
						<td><label>Bin it:</label></td>
						<td><form:checkbox path="bin" /></td>
					</tr>

					<tr>
						<td><label>Color:</label></td>
						<td><form:select path="color" required="required">
							<form:option value="Treacle"/>
							<form:option value="Old Oak"/>
							<form:option value="Mahogany"/>
							<form:option value="Tawny"/>
							<form:option value="Copper"/>
							<form:option value="Gold"/>
							<form:option value="Straw"/>
							<form:option value="Clear"/>
						</form:select></td> <!-- to add -->
					</tr>
				</tbody>
			</table>
			<table>
				<tbody>
					<tr>
						<td><label>Tasting Notes:</label></td>
						<td><form:textarea rows="10" cols="100"  path="notes" required="required"/></td>
					</tr>
				</tbody>
			</table>
			<table style="table-layout: fixed ;">
				<tbody>
					<tr>
						<td><label>Balance:</label></td>
						<td><form:select path="whiskyEntryDetail.balance" required="required">
							<form:option value="0"/>
							<form:option value="1"/>
							<form:option value="2"/>
							<form:option value="3"/>
							<form:option value="4"/>
							<form:option value="5"/>
						</form:select></td>
						<td><label>Linger:</label></td>
						<td><form:select path="whiskyEntryDetail.linger" required="required">
							<form:option value="0"/>
							<form:option value="1"/>
							<form:option value="2"/>
							<form:option value="3"/>
							<form:option value="4"/>
							<form:option value="5"/>
						</form:select></td>
						<td><label>Heat:</label></td>
						<td><form:select path="whiskyEntryDetail.heat" required="required">
							<form:option value="0"/>
							<form:option value="1"/>
							<form:option value="2"/>
							<form:option value="3"/>
							<form:option value="4"/>
							<form:option value="5"/>
						</form:select></td>
						<td><label>Dark Fruit:</label></td>
						<td><form:select path="whiskyEntryDetail.darkFruit" required="required">
							<form:option value="0"/>
							<form:option value="1"/>
							<form:option value="2"/>
							<form:option value="3"/>
							<form:option value="4"/>
							<form:option value="5"/>
						</form:select></td>
					</tr>

					<tr>
						<td><label>Citrus:</label></td>
						<td><form:select path="whiskyEntryDetail.citrus" required="required">
							<form:option value="0"/>
							<form:option value="1"/>
							<form:option value="2"/>
							<form:option value="3"/>
							<form:option value="4"/>
							<form:option value="5"/>
						</form:select></td>
						<td><label>Floral:</label></td>
						<td><form:select path="whiskyEntryDetail.floral" required="required">
							<form:option value="0"/>
							<form:option value="1"/>
							<form:option value="2"/>
							<form:option value="3"/>
							<form:option value="4"/>
							<form:option value="5"/>
						</form:select></td>
						<td><label>Spicy:</label></td>
						<td><form:select path="whiskyEntryDetail.spicy" required="required">
							<form:option value="0"/>
							<form:option value="1"/>
							<form:option value="2"/>
							<form:option value="3"/>
							<form:option value="4"/>
							<form:option value="5"/>
						</form:select></td>
						<td><label>Herbal</label></td>
						<td><form:select path="whiskyEntryDetail.herbal" required="required">
							<form:option value="0"/>
							<form:option value="1"/>
							<form:option value="2"/>
							<form:option value="3"/>
							<form:option value="4"/>
							<form:option value="5"/>
						</form:select></td>

					</tr>

					<tr>
						<td><label>Malty:</label></td>
						<td><form:select path="whiskyEntryDetail.malty" required="required">
							<form:option value="0"/>
							<form:option value="1"/>
							<form:option value="2"/>
							<form:option value="3"/>
							<form:option value="4"/>
							<form:option value="5"/>
						</form:select></td>
						<td><label>Toffee:</label></td>
						<td><form:select path="whiskyEntryDetail.toffee" required="required">
							<form:option value="0"/>
							<form:option value="1"/>
							<form:option value="2"/>
							<form:option value="3"/>
							<form:option value="4"/>
							<form:option value="5"/>
						</form:select></td>
						<td><label>Woody:</label></td>
						<td><form:select path="whiskyEntryDetail.woody" required="required">
							<form:option value="0"/>
							<form:option value="1"/>
							<form:option value="2"/>
							<form:option value="3"/>
							<form:option value="4"/>
							<form:option value="5"/>
						</form:select></td>
						<td><label>Tannic:</label></td>
						<td><form:select path="whiskyEntryDetail.tannic" required="required">
							<form:option value="0"/>
							<form:option value="1"/>
							<form:option value="2"/>
							<form:option value="3"/>
							<form:option value="4"/>
							<form:option value="5"/>
						</form:select></td>

					</tr>

					<tr>
						<td><label>Char:</label></td>
						<td><form:select path="whiskyEntryDetail.charLvl" required="required">
							<form:option value="0"/>
							<form:option value="1"/>
							<form:option value="2"/>
							<form:option value="3"/>
							<form:option value="4"/>
							<form:option value="5"/>
						</form:select></td>
						<td><label>Sweet:</label></td>
						<td><form:select path="whiskyEntryDetail.sweet" required="required">
							<form:option value="0"/>
							<form:option value="1"/>
							<form:option value="2"/>
							<form:option value="3"/>
							<form:option value="4"/>
							<form:option value="5"/>
						</form:select></td>
						<td><label>Body:</label></td>
						<td><form:select path="whiskyEntryDetail.body" required="required">
							<form:option value="0"/>
							<form:option value="1"/>
							<form:option value="2"/>
							<form:option value="3"/>
							<form:option value="4"/>
							<form:option value="5"/>
						</form:select></td>
						<td><label>Legs:</label></td>
						<td><form:select path="whiskyEntryDetail.legs" required="required">
							<form:option value="0"/>
							<form:option value="1"/>
							<form:option value="2"/>
							<form:option value="3"/>
							<form:option value="4"/>
							<form:option value="5"/>
						</form:select></td>

					</tr>

					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save" /></td>
					</tr>

				
				</tbody>
			</table>
		
		
		</form:form>
	

		
		<p>
			<a href="${pageContext.request.contextPath}/whisky/whiskyList">Back to List</a>
		</p>
	
	</div>

</body>

</html>










