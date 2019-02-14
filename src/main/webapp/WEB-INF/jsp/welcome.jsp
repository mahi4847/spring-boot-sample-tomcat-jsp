<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">
<head>
<style>
body  {
  background-image: url("/resources/real-user-monitoring_l_logo.jpg");
  background-color: #cccccc;
}
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
h2 { 
  display: block;
  color: blue;
}
</style>
</head>
<body>
	<c:url value="/resources/text.txt" var="url"/>
	<spring:url value="/resources/text.txt" htmlEscape="true" var="springUrl" />
	<!--Spring URL: ${springUrl} at ${time}
	<br>
	JSTL URL: ${url}
	<br>
	Message: ${message}-->
	
	<h2>Avengers - Monitoring Dashboards!!!</h2>

	<table>
	  <tr>
	    <th>SNO</th>
	    <th>Report Name</th>
	   </tr>
	  <tr>
	    <td>1</td>
	    <td>SonarQube</td>
	  </tr>
	  <tr>
	    <td>2</td>
	    <td>Jenkins</td>
	  </tr>
	  <tr>
	    <td>3</td>
	    <td>kubernetes</td>
	  </tr>
	 <tr>
	    <td>4</td>
	    <td>Testcase execution</td>
	  </tr>
	</table>
</body>

</html>
