<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
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
				<div class="col-md-12 text-right">
					<a class="btn btn-lg btn-primary" href="Signup.jsp">Sign up</a>
				</div>
			</div>
		</div>
	</div>
	<div class="section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="section text-left">
						<div class="container">
							<div class="row">
								<div class="col-md-12">
									<form class="form-horizontal" role="form"  action="./login_action.jsp" method="post">
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
												<button  type="submit" class="btn btn-lg btn-primary">Sign in</button>
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
</html>