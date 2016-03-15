<html>
 <head>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/passport.css" rel="stylesheet">
      <script src="js/jquery-1.11.3.js"></script>
  <script src="js/bootstrap.min.js"></script>

  </head>
<body>

 <center><h1 style = "color:green"> Appointment Form </h1></center>
<form class="form-horizontal" role="form">
  <div class="form-group">
    <label class="control-label col-sm-2" for="email">Enter your Applicant Id</label>
    <div class="col-sm-10">
      <input type="text" class="form-control form-control-inline" id="email">
    </div>
  </div>

  <div class="form-group">
    <label class="control-label col-sm-2" for="email">Select a Passport Kendra</label>
     <div class="dropdown">
  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Select
  <span class="caret"></span></button>
  <ul class="dropdown-menu">
    <li>Palakkad</a></li>
    <li><a href="#">Ernakulam</a></li>
    <li><a href="#">Kollam</a></li>
    <li><a href="#">Trivandrum</a></li>
  </ul>
</div>
  </div>
  
  

<div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Select a time slot:</label>
   <div class="radio">
  <label><input type="radio" name="optradio">9:30 AM - 12: 15 AM</label>

  <label><input type="radio" name="optradio">1:00 PM - 3:30 PM</label>
</div>

<div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <button type="button" class="btn btn-default">Back</button>
      <button type="submit" class="btn btn-default">Continue</button>
    </div>
  </div>

</form>
</body>
</html>



