<%@ page language="java" import="java.sql.*" %>
<!doctype html>
<html>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=null;
	Statement stmt=null;
ResultSet rs=null;
int x=0;
	try{
		String url="jdbc:mysql://localhost/apex?user=root&password=malakonda";
		con=DriverManager.getConnection(url);
		stmt=con.createStatement();
String ena=request.getParameter("user");
String  esa=request.getParameter("password");
rs=stmt.executeQuery("select * from login");
while(rs.next())
{
if(rs.getString("user").equals(ena)&&rs.getString("password").equals(esa))
{
x++;
%>
<a href="http://localhost:8081/myjsp/index.html">logined successfully</a>
<%
}
}
if(x==0)
{
%>
<a href="http://localhost:8081/myjsp/rlinks.jsp">no previous id register here</a>
<%
}
}
catch(Exception e)
{
out.print("no");
}
%>
</html>

