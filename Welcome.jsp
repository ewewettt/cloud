<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; 
  charset=ISO-8859-1" />
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript"
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
<script type="text/javascript"
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="CSS/Upload.css" rel="stylesheet" type="text/css">
</head>
<body>

	<div class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#navbar-ex-collapse">
					<span class="sr-only">Toggle navigation</span><span
						class="icon-bar"></span><span class="icon-bar"></span><span
						class="icon-bar"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse" id="navbar-ex-collapse">
				<ul class="nav navbar-nav navbar-right">
				<% String username = request.getParameter("username"); %>
				<% int userid = new Integer(request.getParameter("userid")); %>
				<li><a ><%=username%></a></li>	
					<li><a href="./MyApps.jsp?userid=<%=userid%>&username=<%=username%>">MyApps</a></li>
					<li><a href="./Upload.jsp?userid=<%=userid%>&username=<%=username%>">Upload</a></li>
					<li><a href="./Balance.jsp?userid=<%=userid%>&username=<%=username%>">Balance</a></li>									
					<li><a href="./Signin.jsp?userid=<%=userid%>&username=<%=username%>">Log Out</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h1></h1>
				</div>
			</div>
		</div>
	</div>
	<div class="section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<form method="post" action="upload" enctype="multipart/form-data" class="form-horizontal" role="form" >												
						<div class="row">
											<div class="col-md-12">
												<h1 class="text-center">Hello, <%=request.getParameter("username")%>, welcome back!</h1>
											</div>
										</div>										
					</form>
				</div>
			</div>
		</div>
	</div>
	<footer class="section section-primary">
	<div class="container">
		<div class="row">
			<div class="col-sm-6">
				<h1>CONTACT US</h1>
				<p contenteditable="true">This paltform is develped for clould
					computing module. If you have any problem, please send email
					to&nbsp;zshi3@sheffield.ac.uk.</p>
			</div>
			<div class="col-sm-6">
				<p class="text-info text-right">
					<br>
					<br>
				</p>
				<div class="row">
					<div class="col-md-12 hidden-lg hidden-md hidden-sm text-left">
						<a href="#"><i
							class="fa fa-3x fa-fw fa-instagram text-inverse"></i></a> <a href="#"><i
							class="fa fa-3x fa-fw fa-twitter text-inverse"></i></a> <a href="#"><i
							class="fa fa-3x fa-fw fa-facebook text-inverse"></i></a> <a href="#"><i
							class="fa fa-3x fa-fw fa-github text-inverse"></i></a>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 hidden-xs text-right">
						<a href="#"><i
							class="fa fa-3x fa-fw fa-instagram text-inverse"></i></a> <a href="#"><i
							class="fa fa-3x fa-fw fa-twitter text-inverse"></i></a> <a href="#"><i
							class="fa fa-3x fa-fw fa-facebook text-inverse"></i></a> <a href="#"><i
							class="fa fa-3x fa-fw fa-github text-inverse"></i></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	</footer>
	<div class="cover">
		<div class="cover-image"></div>
	</div>
</body>
</html>