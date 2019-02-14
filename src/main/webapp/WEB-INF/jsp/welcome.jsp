<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">
<head>
<style>
body  {
  background-image: url("https://smartbear.com/SmartBear/media/images/product/AlertSite%20UXM%20SB/real-user-monitoring_l.jpg");
  height: 500px; /* You must set a specified height */
  background-position: center; /* Center the image */
  background-repeat: no-repeat; /* Do not repeat the image */
  background-size: cover; /* Resize the background image to cover the entire container */
}
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
td, th {
  border: 1px solid black;
  text-align: left;
  padding: 8px;
}
th {
  background-color: #4CAF50;
  color: white;
}
/*tr:nth-child(even) {
  background-color: #dddddd;
}
tr:nth-child(odd) {
  background-color: #f2f2f2;;
}*/
h1 { 
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
	<h1><img src="https://i.ebayimg.com/images/g/uKgAAOSwLdBaOoyd/s-l300.jpg" alt="logo" width="100" height="100" /> Monitoring Dashboards!!!</h1>
	
	<table width="400">
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
