<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="ISO-8859-1">
  <title>Search Result</title>
</head>
<body>

<h2>Search Result</h2>

<% 

/*

String preferredGender = request.getParameter("gender");

if (preferredGender.equalsIgnoreCase("M")) {
	preferredGender = "Male";
}
else {
	preferredGender = "Female";
}

String preferredGender = (String) request.getAttribute("gender");

*/




%>

<p>&nbsp;</p>

You have indicated that you want to find a:<span>&nbsp;&nbsp;</span><%= request.getAttribute("gender") %>

<p>&nbsp;</p>


<a href="find_match.html">Perform New Search</a>

</body>
</html>
