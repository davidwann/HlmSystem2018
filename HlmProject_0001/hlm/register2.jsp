<!doctype html>
<html lang="en">
<!--  register2.jsp  -->
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

  String accountType = request.getParameter("accountType");

  // String yearOfBirth = request.getParameter("yearOfBirth");

  String sf_interest = request.getParameter("SF_Interest");
  String sm_interest = request.getParameter("SM_Interest");
  String cmf_interest = request.getParameter("CMF_Interest");
  String cmm_interest = request.getParameter("CMM_Interest");
  String cff_interest = request.getParameter("CFF_Interest");

  String zipCode = request.getParameter("zipCode");

%>

<!-- 

<div class="container">
<div class="container-fluid">

-->

<div class="container">

<h1>Step 2 of 3</h1>


<%= accountType %>
<br />





<%= sf_interest %>
<br />

<%= sm_interest %>
<br />

<%= cmf_interest %>
<br />

<%= cmm_interest %>
<br />

<%= cff_interest %>
<br />





<%= zipCode %>
<br />






<form>

  <div class="form-group">
    <label for="accountTypeInput">Account Type</label>

    <select class="form-control" id="accountTypeInput" name="accountType">
      <option value="singlemale">Single Male</option>
      <option value="singlefemale">Single Female</option>
      <option value="couple">Couple</option>
    </select>

  </div>

  <div class="form-group">
    <label for="yearOfBirthInput">Year of Birth ( example: 1958 )</label>
    <input type="text" class="form-control" id="yearOfBirthInput" name="yearOfBirth" placeholder="Enter Year of Birth" />
  </div>


</form>


<p>&nbsp;</p>
<p>&nbsp;</p>











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















