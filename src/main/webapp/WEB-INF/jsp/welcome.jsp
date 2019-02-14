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
  font-weight: bold;
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
  color: #CD33FF;
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
	<center><img src="https://seeklogo.com/images/T/the-avengers-capitao-america-logo-72B7C58836-seeklogo.com.png" alt="logo" width="100" height="100" /><h1>Monitoring Dashboards!!!</h1></center>
	<table width="100">
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
	    <td>Prometheus</td>
	  </tr>
      	<tr>
	    <td>5</td>
	    <td>Alert Manager</td>
	  </tr>
	 <tr>
	    <td>6</td>
	    <td>Slack</td>
	  </tr>
	</table>
</body>

</html>
