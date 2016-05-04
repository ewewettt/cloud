
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath %>"/>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript"
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
<script type="text/javascript"
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="CSS/signin.css" rel="stylesheet" type="text/css">
</head>
<body>	
	<div class="section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="section text-left">
						<div class="container">
							<div class="row">
								<div class="col-md-12">
									<form class="form-horizontal" role="form"  action="./Signup_action.jsp" method="post">
										<div class="form-group">
											<div class="col-sm-2">
												<label for="inputEmail3" class="control-label">Username</label>
											</div>
											<div class="col-sm-10">
												<input type="text" name="username" class="form-control" id="inputEmail3"
													placeholder="Username">
											</div>
										</div>
										<div class="form-group">
											<div class="col-sm-2">
												<label for="inputPassword3" class="control-label">Password</label>
											</div>
											<div class="col-sm-10">
												<input type="password" name="password" class="form-control"
													id="inputPassword3" placeholder="Password">
											</div>
										</div>
										<div class="form-group">
											<div class="col-sm-offset-2 col-sm-10">
												<button  type="submit" class="btn btn-lg btn-primary">Register</button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
 <script>
var usernameUsed="<%=request.getParameter("usernameUsed")%>";
if(usernameUsed=="success"){
	alert("Successfully register!");
	showSuccess("Successfully register!");
}else if(usernameUsed=="fail"){
	alert("username has been used, please try another one");
	showFailure("Register Failed!");
}else if(usernameUsed=="Blank"){
	alert("Invalib username or password!");
	showBlank("Please enter valib username and password!");
}else if(usernameUsed=="notRegister"){
	alert("Username have not been register!Please Register!");
	showRegister("Please Register!");
}
function showInfo(msg){
	showTip(msg,"info");
}
function showSuccess(msg){
	showTip(msg,"success")
}
function showFailure(msg){
	showTip(msg,"Failed")
}
function showBlank(msg){
	showTip(msg,"Blank")
}
function showRegister(msg){
	showTip(msg,"Register")
}
function showTip(tip,type){
	var $tip = $('#tip');
	$tip.attr('class','alert alert-'+type).text(tip).css('margin-left',-$tip.outerWidth()/2).fadeIn(500).delay(2000).fadeOut(500);
}
</script>
</html>