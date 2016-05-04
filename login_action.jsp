<%@ include file="db.jsp" %>
<%
String username = request.getParameter("username");
String password = request.getParameter("password");
int userid = 0;
if(username == null || password == null){
    response.sendRedirect("Hello.jsp");
    return;
}

boolean isValid = false;
String sql = "select * from user where username='"+username+"'and password='"+password+"';";
//out.println("===>"+sql);
try{
    Class.forName(drv).newInstance();
    Connection conn = DriverManager.getConnection(url, usr,pwd);
    Statement stm = conn.createStatement();
    ResultSet rs = stm.executeQuery(sql);
    if(rs.next()){
    	isValid = true;
    	userid=rs.getInt("userid");	
    }
    rs.close();
    stm.close();
    conn.close();
}catch(Exception e){
    e.printStackTrace();
    out.println(e);
}
if(isValid){
    response.sendRedirect("Welcome.jsp?userid="+userid+"&username="+username); 
	
}else response.sendRedirect("Signup.jsp?usernameUsed=notRegister"); 
%>
