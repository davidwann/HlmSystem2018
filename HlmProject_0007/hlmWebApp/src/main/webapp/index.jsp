<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>
<h2>Hello World!</h2>

<hr />

<h3>Main Menu</h3>

<ul>
  <li><a href="find_match.html">Find Match</a></li>
  <li><a href="#">Do Something Else</a></li>
</ul>

<hr />

<jsp:useBean id="ua" scope="session" class="com.hlm.test.UserAccount" />

<div>
User Name:&nbsp;&nbsp;<jsp:getProperty name="ua" property="userName" />
</div>

<div>
Zip Code:&nbsp;&nbsp;<jsp:getProperty name="ua" property="zipCode" />
</div>

<div>
Account Type:&nbsp;&nbsp;<jsp:getProperty name="ua" property="accountType" />
</div>


<jsp:setProperty name="ua" property="userName" param="un" />

<div>
User Name:&nbsp;&nbsp;<jsp:getProperty name="ua" property="userName" />
</div>




</body>
</html>
