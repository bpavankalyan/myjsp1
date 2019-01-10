<!doctype html>
<%@ page language="java" import="java.sql.*" %>
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
int en=Integer.parseInt(request.getParameter("enumber"));
stmt.executeUpdate("delete from myemp where eno="+en);
rs=stmt.executeQuery("select * from myemp");
%>
<body>
<center>
<h1><details>
</h1>
<table border="3">
<tr>
<td> <b>eno</b></td>
<td> <b>ename</b></td>
<td> <b>esalary</b></td>
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
