<%
    
    try{
        String n =(String)session.getAttribute("uname");
        if(n.length()>3){
            response.sendRedirect("welcome.jsp");
        }
    }catch(Exception e){}
%>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Login to System</title>
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
	<link href="bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" media="screen">
	<link rel="stylesheet" href="bootstrap/style.css" type="text/css"  />
</head>
<body>
	<script type="text/javascript">window.alert("Do not login/save password by devices you don't own")</script>

	<div class="signin-form">

		<div class="container">


			<form class="form-signin" method="get" action="login">

				<h2 class="form-signin-heading">Log In to System.</h2><hr />

				<div id="error">
					<%
                                            try{
                                                    String e =(String)session.getAttribute("error");
                                                    if(e.length()>3){
                                        %>
                                                        <div class="alert alert-danger">
							<i class="glyphicon glyphicon-warning-sign"></i> &nbsp; Invalid Login Details !
                                                        </div>
					<%
                                                                    }
                                                }catch(Exception e){}
					%>
				</div>

				<div class="form-group">
					<input type="text" class="form-control" name="uname" placeholder="Username or E mail ID" required />
					<span id="check-e"></span>
				</div>

				<div class="form-group">
					<input type="password" class="form-control" name="pass" placeholder="Your Password" />
				</div>

				<hr />

				<div class="form-group">
					<button type="submit" value="login" class="btn btn-default">
						<i class="glyphicon glyphicon-log-in"></i> &nbsp; SIGN IN
					</button>
				</div>
				<br />
				<!--  <label>Don't have account yet ! <a href="sign-up.php">Sign Up</a></label> -->
			</form>

		</div>

	</div>

</body>
</html>
