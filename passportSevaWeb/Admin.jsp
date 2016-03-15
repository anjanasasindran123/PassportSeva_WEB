<html>
 <head>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/passport.css" rel="stylesheet">
  </head>
    <center><h1 style = "color: green" ><b>Administrator Login</b></h1></center>
   
  <form class="form-horizontal" role="form" action="OfficerLogin">
  <div class="form-group">
    <label class="control-label col-sm-2" for="email">Admin Id</label>
    <div class="col-sm-10">
      <input type="text" class="form-control form-control-inline" name="admin_email" placeholder="Enter Id">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Password:</label>
    <div class="col-sm-10"> 
      <input type="password" class="form-control form-control-inline" name="admin_pwd" placeholder="Enter password">
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
      <button type="submit" class="btn btn-default">Submit</button>
    </div>
  </div>
  
  
  </form>
    
</html>