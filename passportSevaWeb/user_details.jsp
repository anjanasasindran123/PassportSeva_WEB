<html>
 <head>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/passport.css" rel="stylesheet">
    <script src="js/passport.js"></script>
  </head>
  <body>
      
      <jsp:include page="navbar_top.jsp" />
    <center><h1 style = "color: green"> <b> Applicant Details </b> </h1></center>
<form class="form-horizontal" role="form" action="UserDetails">
<div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Name of Father</label>
    <div class="col-sm-10"> 
      <input type="text" class="form-control form-control-inline" name="father">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Name of Mother</label>
    <div class="col-sm-10"> 
      <input type="text" class="form-control form-control-inline" name="mother">
    </div>
  </div>
  
  
   <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Gender</label>
   <div class="radio">
  <label><input type="radio" name="gender" value="male">Male</label>
   <label><input type="radio" name="gender" value="female">Female</label>
</div>

 

<div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Date of Birth</label>
    <div class="col-sm-10"> 
      <input type="text" class="form-control form-control-inline" name="dob" placeholder = "(dd/mm/yyyy)">
    </div>
  </div>
  
  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Address</label>
    <div class="col-sm-10"> 
      <textarea class="form-control form-control-inline" name="permanent_address"></textarea>
    </div>
  </div>
  
  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">City</label>
    <div class="col-sm-10"> 
      <input type="text" class="form-control form-control-inline" name="city">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">State</label>
    <div class="col-sm-10"> 
      <input type="text" class="form-control form-control-inline" name="state">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Current Address</label>
    <div class="col-sm-10"> 
      <textarea class="form-control form-control-inline" name="current_address"></textarea>
    </div>
  </div>
  
  
  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Phone</label>
    <div class="col-sm-10"> 
      <input type="text" class="form-control form-control-inline" name="phone" placeholder = "04xx-">
    </div>
  </div>
  
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default" formaction = "UserDetails">Submit</button>
    </div>
  </div>
  </form>
  
  </body>
</html>
  