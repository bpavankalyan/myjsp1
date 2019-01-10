<!doctype html>
<%@ page language="java" import="java.sql.*" %>
<html>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=null;
	Statement stmt=null;
ResultSet rs=null;
try{
	try{
		String url="jdbc:mysql://localhost/apex?user=root&password=malakonda";
		con=DriverManager.getConnection(url);
		stmt=con.createStatement();
	}
	catch(Exception e){
		System.out.println(e.getMessage());
	}
int en=Integer.parseInt(request.getParameter("enumber"));
String ena=request.getParameter("ename");
int esa=Integer.parseInt(request.getParameter("esalary"));
stmt.executeUpdate("insert into myemp values("+en+",'"+ena+"',"+esa+")");
rs=stmt.executeQuery("select * from myemp");
%>
<body>
<center>
<h1><details>
</h1>
<table border="3">
<tr>
<td> <b>eno></b></td>
<td> <b>ename></b></td>
<td> <b>esalary></b></td>
</tr>
<%
while(rs.next())
{
%>
<tr>
<td><%=rs.getInt("eno")%></td>
<td><%=rs.getString("ename")%></td>
<td><%=rs.getInt("esal")%></td>
</tr>
<%
}
rs.close();
stmt.close();
con.close();
}
catch(Exception e){
		System.out.println("no");
	}
%>
</table>
<centre>
</body>
</html>
