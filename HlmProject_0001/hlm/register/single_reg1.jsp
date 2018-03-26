<!doctype html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="en">
<!--  register/single_reg1.jsp  -->
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport"
        content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet"
        href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
        crossorigin="anonymous">

  <title>Create New Account - Horny Like Me</title>

</head>

<body>

<%

  /* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */

  String accountType = (String) request.getAttribute("accountType");

  /* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */

  String gender = (String) request.getAttribute("gender");

  /* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */

  String sf_interest = (String) request.getAttribute("SF_Interest");

  if (sf_interest == null) {
    sf_interest = "0";
  } else {
    sf_interest = "1";
  }

  /* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */

  String sm_interest = (String) request.getAttribute("SM_Interest");

  if (sm_interest == null) {
    sm_interest = "0";
  } else {
    sm_interest = "1";
  }

  /* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */

  String cmf_interest = (String) request.getAttribute("CMF_Interest");

  if (cmf_interest == null) {
    cmf_interest = "0";
  } else {
    cmf_interest = "1";
  }

  /* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */

  String cmm_interest = (String) request.getAttribute("CMM_Interest");

  if (cmm_interest == null) {
    cmm_interest = "0";
  } else {
    cmm_interest = "1";
  }

  /* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */

  String cff_interest = (String) request.getAttribute("CFF_Interest");

  if (cff_interest == null) {
    cff_interest = "0";
  } else {
    cff_interest = "1";
  }

  /* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */

  String zipCode = (String) request.getAttribute("zipCode");

  /* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */

  String email = (String) request.getAttribute("email");

  /* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */

  String password = (String) request.getAttribute("password");

  /* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */


%>

<!--

<div class="container">
<div class="container-fluid">

-->

<div class="container">

<h1>Step 2 of 3</h1>

<form action="reg_values.jsp" method="post">

<input type="hidden" value="<%= accountType %>" name="accountType" />
<input type="hidden" value="<%= sm_interest %>" name="SM_Interest" />
<input type="hidden" value="<%= sf_interest %>" name="SF_Interest" />
<input type="hidden" value="<%= cmf_interest %>" name="CMF_Interest" />
<input type="hidden" value="<%= cmm_interest %>" name="CMM_Interest" />
<input type="hidden" value="<%= cff_interest %>" name="CFF_Interest" />
<input type="hidden" value="<%= zipCode %>" name="zipCode" />

<input type="hidden" value="<%= email %>" name="email" />
<input type="hidden" value="<%= password %>" name="password" />

<!--

 - Gender
 - Year of Birth:
 - Orientation:  Straight, Gay, Bisexual

  <div class="form-group">
    <label for="genderInput">Your Gender</label>
    <select class="form-control" id="genderInput" name="gender">
      <option value="M">Male</option>
      <option value="F">Female</option>
    </select>
  </div>

-->

  <!-- = = = = = = = = = = = = = = = = = = = = = = = = = = = = = -->

  <!--  Gender  -->



  <input type="hidden" value="<%= accountType %>" name="accountType" />
  <input type="hidden" value="<%= sm_interest %>" name="SM_Interest" />


  <c:choose>
    <c:when test='${accountType == "CP"}'>
      <c:out value='<option value="${i}" selected>${i}</option>' escapeXml='false' />
    </c:when>
    <c:otherwise>
      <c:out value='<option value="${i}">${i}</option>' escapeXml='false' />
    </c:otherwise>
  </c:choose>





  <!-- = = = = = = = = = = = = = = = = = = = = = = = = = = = = = -->

  <!--  Year of Birth  -->

  <jsp:useBean id="current_date" scope="page" class="java.util.Date" />
  <fmt:formatDate value="${current_date}" var="current_year" pattern="y" />
  <c:set var="start_year" value="${current_year - 118}" scope="page" />
  <c:set var="end_year" value="${current_year - 18}" scope="page" />
  <c:set var="select_year" value="${current_year - 40}" scope="page" />

  <div class="form-group">
    <label for="yearOfBirthInput">Your Year of Birth ( example: 1958 )</label>
    <select class="form-control" id="yearOfBirthInput" name="yearOfBirth">
      <c:forEach var='i' begin='${start_year}' end='${end_year}'>
        <c:choose>
          <c:when test="${i == select_year}">
            <c:out value='<option value="${i}" selected>${i}</option>' escapeXml='false' />
          </c:when>
          <c:otherwise>
            <c:out value='<option value="${i}">${i}</option>' escapeXml='false' />
          </c:otherwise>
        </c:choose>
      </c:forEach>
    </select>
  </div>

  <!-- = = = = = = = = = = = = = = = = = = = = = = = = = = = = = -->

  <!--  Orientation  -->

  <div class="form-group">
    <label for="orientationInput">Your Orientation</label>
    <select class="form-control" id="orientationInput" name="orientation">
      <option value="S">Straight</option>
      <option value="G">Gay</option>
      <option value="B">Bisexual</option>
    </select>
  </div>

  <!--  race  -->

  <div class="form-group">
    <label for="raceInput">Your Race</label>
    <select class="form-control" id="raceInput" name="race">
      <option value="unspecified">Unspecified</option>
      <option value="white">White</option>
      <option value="black">Black or African American</option>
      <option value="hispanic">Hispanic or Latino</option>
      <option value="asian">Asian</option>
      <option value="indian">Indian</option>
      <option value="mideast">Middle Eastern</option>
      <option value="amindian">American Indian or Alaska Native</option>
      <option value="hawaiian">Native Hawaiian or Other Pacific Islander</option>
      <option value="mixed">Mixed Race</option>
      <option value="other">Other</option>
    </select>
  </div>

  <!--  height  -->

  <div class="form-group">
    <label for="heightInput">Your Height</label>
    <select class="form-control" id="heightInput" name="height">

      <option value="47">Less than 4 feet</option>

      <option value="48">4 feet  0 inches</option>
      <option value="49">4 feet  1 inch</option>
      <option value="50">4 feet  2 inches</option>
      <option value="51">4 feet  3 inches</option>
      <option value="52">4 feet  4 inches</option>
      <option value="53">4 feet  5 inches</option>
      <option value="54">4 feet  6 inches</option>
      <option value="55">4 feet  7 inches</option>
      <option value="56">4 feet  8 inches</option>
      <option value="57">4 feet  9 inches</option>
      <option value="58">4 feet 10 inches</option>
      <option value="59">4 feet 11 inches</option>


      <option value="60">5 feet  0 inches</option>
      <option value="61">5 feet  1 inch</option>
      <option value="62">5 feet  2 inches</option>
      <option value="63">5 feet  3 inches</option>
      <option value="64">5 feet  4 inches</option>
      <option value="65">5 feet  5 inches</option>
      <option value="66">5 feet  6 inches</option>
      <option value="67">5 feet  7 inches</option>
      <option value="68">5 feet  8 inches</option>
      <option value="69">5 feet  9 inches</option>
      <option value="70">5 feet 10 inches</option>
      <option value="71">5 feet 11 inches</option>


      <option value="72">6 feet  0 inches</option>
      <option value="73">6 feet  1 inches</option>
      <option value="74">6 feet  2 inches</option>
      <option value="75">6 feet  3 inches</option>
      <option value="76">6 feet  4 inches</option>
      <option value="77">6 feet  5 inches</option>
      <option value="78">6 feet  6 inches</option>
      <option value="79">6 feet  7 inches</option>
      <option value="80">6 feet  8 inches</option>
      <option value="81">6 feet  9 inches</option>
      <option value="82">6 feet 10 inches</option>
      <option value="83">6 feet 11 inches</option>

      <option value="84">7 Feet or Taller</option>

    </select>
  </div>

  <!--  body type  -->

  <div class="form-group">
    <label for="bodyTypeInput">Your Body Type</label>
    <select class="form-control" id="bodyTypeInput" name="bodyType">
      <option value="unspecified">Unspecified</option>
      <option value="slender">Slender</option>
      <option value="athletic">Athletic</option>
      <option value="muscular">Muscular</option>
      <option value="average">Average</option>
      <option value="fewextra">A Few Extra Pounds</option>
      <option value="bbw">BBW or Big and Tall</option>
    </select>
  </div>

  <!--  occupation  -->

  <div class="form-group">
    <label for="occupationInput">Your Occupation</label>
    <input type="text" class="form-control" id="occupationInput" name="occupation" placeholder="Not Required" />
  </div>

  <!--  highest level of education  -->






  <!--  marital status  -->
  <!--


    marital status:  single
                     married
                     separated
                     divorced
                     widowed

  -->



  <!--  Smoke  -->



  <!--  Drink  -->



  <!--  Drugs  -->









  <!--  Email Address  -->

  <!--

  <div class="form-group">
    <label for="emailInput">Email Address</label>
    <input type="text" class="form-control" id="emailInput" name="email" placeholder="Enter Your Email Address" />
  </div>

  -->

  <!--  Password  -->

  <!--

  <div class="form-group">
    <label for="passwordInput">Password</label>
    <input type="password" class="form-control" id="passwordInput" name="password" placeholder="Enter Password" />
  </div>

  -->

  <!--  Password Confirmation  -->

  <!--

  <div class="form-group">
    <label for="passwordConfirmationInput">Confirm Password</label>
    <input type="password" class="form-control" id="passwordConfirmationInput" name="passwordConfirmation" placeholder="Re-enter Password" />
  </div>

  -->

  <!--  =====================  -->

  <div class="form-group">
    <button type="submit" class="btn btn-primary">Next</button>
  </div>

</form>

</div>

<!-- ===================================================================================== -->

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous" />

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous" />

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous" />

</body>

</html>
