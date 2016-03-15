<html>
 <head>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/passport.css" rel="stylesheet">
    <script src="js/passport.js"></script>
  </head>
  <body>
    <center><h1 style = "color: green"> <b> Applicant Details </b> </h1></center>
   
  <form class="form-horizontal" role="form" action="NewRegister" method="get">
  <div class="form-group">
    <label class="control-label col-sm-2" for="email">Full Name(as in Matriculation Certificate)</label>
    <div class="col-sm-10">
      <input type="text" class="form-control form-control-inline" name="fullname">
    </div>
  </div>
  
   <form class="form-horizontal" role="form">
  <div class="form-group">
    <label class="control-label col-sm-2" for="email">Email</label>
    <div class="col-sm-10">
      <input type="email" class="form-control form-control-inline" name="email" placeholder = "Email">
    </div>
  </div>
   <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Set a password</label>
    <div class="col-sm-10"> 
      <input type="password" class="form-control form-control-inline" name="passwd">
    </div>
  </div>
  
 
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">Submit</button>
    </div>
  </div>
</form>
  
  </body>
</html>