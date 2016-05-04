<%@ include file="db.jsp" %>
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

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript"
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
<script type="text/javascript"
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href="http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css"
	rel="stylesheet" type="text/css">
</head>
<body>

	<div class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#navbar-ex-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse" id="navbar-ex-collapse">
				<ul class="nav navbar-nav navbar-right">
					<% String username = request.getParameter("username"); %>
					<% int userid = new Integer(request.getParameter("userid")); %>
					<li><a><%=username%></a></li>
					<li><a
						href="./MyApps.jsp?userid=<%=userid%>&username=<%=username%>">MyApps</a></li>
					<li><a
						href="./Upload.jsp?userid=<%=userid%>&username=<%=username%>">Upload</a></li>
					<li><a
						href="./Balance.jsp?userid=<%=userid%>&username=<%=username%>">Balance</a></li>
					<li><a
						href="./Signin.jsp?userid=<%=userid%>&username=<%=username%>">Log
							Out</a></li>
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
	
						<%//get app details
							int developerid=0;
							String developer="";
							String Author="";
							String appName="";
							String path="";
							String sql = "select * from app ";
						
							try{
							    Class.forName(drv).newInstance();
							    Connection conn = DriverManager.getConnection(url, usr,pwd);
							    Statement getapp = conn.createStatement();
							    ResultSet rsgetapp = getapp.executeQuery(sql);
							    while(rsgetapp.next()){							    
							    	developerid=rsgetapp.getInt("userid");
							    	appName=rsgetapp.getString("appname");
							    	path=rsgetapp.getString("path");
							    	Author=rsgetapp.getString("Author");
							    	 Statement getuser = conn.createStatement();
									    ResultSet rsGetuser = getuser.executeQuery("select username from user where userid="+developerid);	
									    if(rsGetuser.next()){
									    	developer=rsGetuser.getString("username");
									    }
									    getuser.close();
									    rsGetuser.close();
									    
									   
							    	%>
							    <%-- <%session.setAttribute("path",path); %> --%>
<form method="post" action="RunApp?appname=<%=appName%>&path=<%=path %>&userid=<%=userid %>&developerid=<%=developerid %>" enctype="multipart/form-data" class="form-horizontal" role="form" >
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="panel panel-primary">
						<div class="panel-heading">   
							<h3 class="panel-title">Developer: <%=developer %></h3>
						</div>
						<div class="panel-heading">   
							<h3 class="panel-title">Author: <%=Author %></h3>
						</div>
						<div class="panel-body">
							<p>App Name: <%=appName %></p>
						</div>
					</div>
				</div>
			</div>
		</div>					
					<button  type="submit" class="btn btn-lg btn-primary">run</button>
		</div>
		</form>
					 <%	
						 }   	
							    rsgetapp.close();
							    getapp.close();
							    conn.close();
							    
							}catch(Exception e){
							    e.printStackTrace();
							    out.println(e);
							}
						
							%>
		
	
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
					<br> <br>
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
</body>
</html>