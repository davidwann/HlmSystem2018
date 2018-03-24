<!doctype html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="en">
<!-- create_account.jsp -->
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

<!-- 

<div class="container">
<div class="container-fluid">

-->

<div class="container">

<h1>Create New Account</h1>

<form action="ateval" method="post">

  <!--  =======================================================  -->

  <!--  Account Type  -->

  <div class="form-group">
    <label for="accountTypeInput">Select Account Type</label>

    <select class="form-control" id="accountTypeInput" name="accountType">
      <option value="SM">Single Male</option>
      <option value="SF">Single Female</option>
      <option value="CP">Couple - Male/Female</option>
      <option value="CM">Couple - Male/Male</option>
      <option value="CF">Couple - Female/Female</option>
    </select>

  </div>

  <!--  =======================================================  -->

  <!--  Interested In...  -->

  <div>Select Your Interests</div>

  <div class="form-group">

    <div class="form-check">
      <label class="form-check-label">
        <input type="checkbox" 
               class="form-check-input" 
               value="SF" 
               name="SF_Interest">Single Females</input>
      </label>
    </div>

    <div class="form-check">
      <label class="form-check-label">
        <input type="checkbox" 
               class="form-check-input" 
               value="SM" 
               name="SM_Interest">Single Males</input>
      </label>
    </div>

    <div class="form-check">
      <label class="form-check-label">
        <input type="checkbox" 
               class="form-check-input" 
               value="CP" 
               name="CMF_Interest">Couples - Male/Female</input>
      </label>
    </div>

    <div class="form-check">
      <label class="form-check-label">
        <input type="checkbox" 
               class="form-check-input" 
               value="CM" 
               name="CMM_Interest">Couples - Male/Male</input>
      </label>
    </div>

    <div class="form-check">
      <label class="form-check-label">
        <input type="checkbox" 
               class="form-check-input" 
               value="CF" 
               name="CFF_Interest">Couples - Female/Female</input>
      </label>
    </div>



  </div>

  <!--  =======================================================  -->

  <div class="form-group">
    <label for="zipCodeInput">Enter Your Zip Code ( example: 30314 )</label>
    <input type="text" class="form-control" id="zipCodeInput" name="zipCode" placeholder="Enter Your Zip Code" />
  </div>

  <!--  =======================================================  -->

  <!--  Email Address  -->

  <div class="form-group">
    <label for="emailInput">Email Address</label>
    <input type="text" class="form-control" id="emailInput" name="email" placeholder="Enter Your Email Address" />
  </div>

  <!--  Password  -->

  <div class="form-group">
    <label for="passwordInput">Password</label>
    <input type="password" class="form-control" id="passwordInput" name="password" placeholder="Enter Password" />
  </div>

  <!--  Password Confirmation  -->

  <div class="form-group">
    <label for="passwordConfirmationInput">Confirm Password</label>
    <input type="password" class="form-control" id="passwordConfirmationInput" name="passwordConfirmation" placeholder="Re-enter Password" />
  </div>

  <!--  =======================================================  -->

  <div class="form-group">
    <button type="submit" class="btn btn-primary">Next</button>
  </div>

  <!--  =======================================================  -->

</form>




<!--

  <div class="form-group">
    <label for="yearOfBirthInput">Year of Birth ( example: 1958 )</label>
    <input type="text" class="form-control" id="yearOfBirthInput" name="yearOfBirth" placeholder="Enter Year of Birth" />
  </div>



<p>&nbsp;</p>
<p>&nbsp;</p>


  <form>
    <div class="form-group row">
      <label for="inputEmail3" class="col-sm-2 col-form-label">Email</label>
      <div class="col-sm-10">
        <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
      </div>
    </div>
    <div class="form-group row">
      <label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
      <div class="col-sm-10">
        <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
      </div>
    </div>
    <fieldset class="form-group row">
      <legend class="col-form-legend col-sm-2">Radios</legend>
      <div class="col-sm-10">
        <div class="form-check">
          <label class="form-check-label">
            <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option1" checked>
            Option one is this and that&mdash;be sure to include why it's great
          </label>
        </div>
        <div class="form-check">
          <label class="form-check-label">
            <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="option2">
            Option two can be something else and selecting it will deselect option one
          </label>
        </div>
        <div class="form-check disabled">
          <label class="form-check-label">
            <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios3" value="option3" disabled>
            Option three is disabled
          </label>
        </div>
      </div>
    </fieldset>
    <div class="form-group row">
      <label class="col-sm-2">Checkbox</label>
      <div class="col-sm-10">
        <div class="form-check">
          <label class="form-check-label">
            <input class="form-check-input" type="checkbox"> Check me out
          </label>
        </div>
      </div>
    </div>
    <div class="form-group row">
      <div class="offset-sm-2 col-sm-10">
        <button type="submit" class="btn btn-primary">Sign in</button>
      </div>
    </div>
  </form>


-->


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

