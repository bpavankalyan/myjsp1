<%@ page language="java" import="java.sql.*" %>
<!doctype html>
<html>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=null;
	Statement stmt=null;
ResultSet rs=null;

	try{
		String url="jdbc:mysql://localhost/apex?user=root&password=malakonda";
		con=DriverManager.getConnection(url);
		stmt=con.createStatement();
String en=request.getParameter("user");
String  esa=request.getParameter("password");
stmt.executeUpdate("insert into login values('"+en+"','"+esa+"')");
%>
<a href="http://localhost:8081/myjsp/index.html">logined successfully</a>
<%
}
catch(Exception e)
{
out.print("no");
}
%>
</html>