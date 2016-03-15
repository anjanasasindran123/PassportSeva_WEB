<html>
 <head>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/passport.css" rel="stylesheet">
  </head>
  <body>
   
    <center><h1 style = "color:green"> User Login </h1></center>
  <form class="form-horizontal" role="form" >
  <div class="form-group">
    <label class="control-label col-sm-2" for="email">Email:</label>
    <div class="col-sm-10">
      <input type="email" class="form-control form-control-inline" name="email" placeholder="Enter email">
    </div>
  </div>
  
      <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Password:</label>
    <div class="col-sm-10"> 
      <input type="password" class="form-conrol form-control-inline" name="pwd" placeholder="Enter password">
    </div>
  </div>
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <div class="checkbox">
        <label><input type="checkbox"> Remember me</label>
      </div>
    </div>
  </div>
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default" formaction = "Login">Submit</button>
    </div>
  </div>
  </form>
  </body>
</html>