<%@ page language="java" import="java.sql.*" %>
<html>
		<body>
		<center>
<%
	
	Class.forName("com.mysql.jdbc.Driver");
 	Connection con=null;
	ResultSet rst=null;
	Statement stmt=null;
	
	try{
String url="jdbc:mysql://localhost/apex?user=root&password=malakonda";
		con=DriverManager.getConnection(url);
		stmt=con.createStatement();
	}
	catch(Exception e){
		System.out.println(e.getMessage());
	}
		rst=stmt.executeQuery("select * from myemp");
		%>
		
			<h2>Employee List</h2>
	<table border="1" cellspacing="0" cellpadding="0">
			<tr>
				<td><b>eno</b></td>
				<td><b>ename</b></td>
				<td><b>esal</.b></td>
			</tr>
			 	<%
			
				while(rst.next())
{
				%>
				<tr>
				  <td><%=rst.getInt(1)%></td>
				  <td><%=rst.getString(2)%></td>
				  <td> <%=rst.getInt(3)%> </td>
				</tr>
				<%

	}
	rst.close();
	stmt.close();
	con.close();
%>
			</table>
			</center>
		</body>
	</html>

