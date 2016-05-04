<%@ include file="db.jsp" %>
<%
String username = request.getParameter("username");
String password = request.getParameter("password");
int userid = 0;
String usernameUsed="success";
if(username == null || password == null){
	 usernameUsed="blank";
}

boolean isValid = false;

String sql1 = "insert into user values('"+userid+"','"+username+"','"+password+"')";
String sql2 = "select * from user where username='"+username+"'";
String sql3 = "select * from user where username='"+username+"'and password='"+password+"'";
String sql4 = "select username from user";
try{
    Class.forName(drv).newInstance();
    Connection conn = DriverManager.getConnection(url, usr,pwd);
    Statement stm = conn.createStatement();
    //judge if username is used
    ResultSet check = stm.executeQuery(sql2);
    if(check.next()){
    	usernameUsed="fail";
    }else{
    	//get number of register users
    	ResultSet count = stm.executeQuery(sql4);
        count.last(); 
        userid = count.getRow();
        count.first(); //
        count.close();
        //insert a new user
        stm.execute("insert into user values('"+userid+"','"+username+"','"+password+"')");
        //check if data is store in database
        ResultSet rs = stm.executeQuery(sql3);
        if(rs.next())isValid = true;
        rs.close();
        //give new user 500 peanut
        stm.execute("insert into balance values("+userid+",500)");
        //check if data is store in database
        ResultSet balance = stm.executeQuery(sql3);
        rs.close();
    }    
    stm.close();
    conn.close();
}catch(Exception e){
    e.printStackTrace();
    out.println(e);
}
if(isValid){
    response.sendRedirect("Welcome.jsp?userid="+userid+"&username="+username); 
	
}else response.sendRedirect("Signup.jsp?usernameUsed="+usernameUsed); 
%>

