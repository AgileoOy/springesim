<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ page session="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags"  prefix="spring"%>

<html>

<head>
<title>Lisää tietokone</title>
<link rel="stylesheet" type="text/css" href="resources/styles/common.css">
<link rel="stylesheet" type="text/css" href="resources/styles/form.css">
<style>
.error {
	color: #ff0000;
}
</style>

</head>

<body>
	<div id="langsel">
		<a href="?lang=en">en</a> | <a href="?lang=fi">fi</a> | <a href="?lang=sv">sv</a>
	</div>
	<h1>
		Tietokoneen tiedot
	</h1>
	<h2>Uusi kone</h2>

	<form:form method="POST" modelAttribute="tietokone">

		<table>
			<tr>
				<td><label for="merkki">Merkki: </label></td>
				<td><form:input path="merkki" id="merkki" /></td>
				<td><form:errors path="merkki" cssClass="error" /></td>
			</tr>
			<tr>
				<td><label for="malli">Malli: </label></td>
				<td><form:input path="malli" id="malli" /></td>
				<td><form:errors path="malli" cssClass="malli" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Lisää"  /></td>
			</tr>

		</table>
	</form:form>
	<br />
	<br />
	<a href="<c:url value='/' />">Listaa koneet</a>
</body>
</html>