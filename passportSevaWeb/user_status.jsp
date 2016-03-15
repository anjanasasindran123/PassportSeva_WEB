<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="true" %>


<html>



 <head>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/passport.css" rel="stylesheet">
  </head>
<body>

  <center><h1 style = "color: green" ><b>You have successfully registered</b></h1></center>


 <form class="form-horizontal" role="form">
  <div class="form-group">
    <% 
        Class.forName("org.postgresql.Driver");
        Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/anjana","postgres","amma123");
        Statement stmt = conn.createStatement(); 
        String email = request.getSession().getAttribute("email").toString();
        String str = "Select appli_id from applicant where email='"+email+"'";
        ResultSet rs = stmt.executeQuery(str);
        String appli_id = null;                       
        while(rs.next()) {
            appli_id = rs.getString(1);
        }
     %>
    <label class="control-label col-sm-2" for="email">Your Applicant Id</label>
    <div class="col-sm-10">
        <%
        out.println("<h1>" + appli_id+ "</h1>");
        %>
    </div>
  </div>


<div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default" formaction = "User_login.jsp">Continue Login</button>
      <button type="submit" class="btn btn-default" formaction =  "login.jsp">Exit</button>
      
    </div>
  
  </form>

</body>



</html>