<!doctype html>
<html>
<head> <title> demo</title> </head>
<body>
<center>
<form action="a1.jsp" method ="post" onsubmit="returnvalidate(this)">
<input type="hidden" value="list" name="action">
<table border="1" align="center">
<tr><td>
<table>
<tr>
<td>
<h2 align="center"> entry</h2>
</td></tr>
<tr>
<td colspan="2">&nbsp;</td></tr>
<tr>
<td>number:</td><td><input type="text"  name="enumber"></td></tr>

<tr><td>name:</td><td><input type="text"  name="ename"></td></tr>
<tr><td>salary:</td><td><input type="text"  name="esalary"></td></tr>
<tr><td><input type="submit"  name="submit"></td><td><input type="reset"  name="clear"></td></tr>
</table>
</form>
</center>
</body>
</html>