<html>
<head>

<link rel="stylesheet" type="text/css" href="genres.css">

</head>
<body >
<div>
<table class="table1" cellpadding="10" align="center" border=2px>
<td> <a href="index.jsp">Home</a> </td> 

<%
String id = (String)session.getAttribute("id");
if(id==null){
%>
<td> <a href="signUp.jsp">Sign-Up</a> </td>
<td> <a href="login.jsp">Log-In</a> </td>
<%
}
else{
%>
<td> <a href="update.jsp">Account</a> </td>
<td> <a href="logout.jsp">Log-Out</a> </td>
<%} %>
<td> <a href="aboutUs.jsp">About Us</a> </td>
</tr>
</table>
</div>

<div class="search">
<form action="searchBox.jsp">
<input type="search" name="search"/>
<input type="submit" value="Search"/>
</form>
</div>

<div class="left">
<table class="table2" border=2px>
<tr>
<td align="center" style="text-decoration:none; color:white;"><b>Genres</b></td>
</tr>
<tr>
<td align="center"><a href="action.jsp">Action</a></td>
</tr>
<tr>
<td align="center"><a href="adventure.jsp">Adventure</a></td>
</tr>
<tr>
<td align="center"><a href="strategy.jsp">Strategy</a></td>
</tr>
<tr>
<td align="center"><a href="survival.jsp">Survival</a></td>
</tr>
<tr>
<td align="center"><a href="horror.jsp">Horror</a></td>
</tr>
<tr>
<td align="center"><a href="shooting.jsp">Shooting</a></td>
</tr>
</table>
</div>

<div class="center">
<table class="table3">
<tr>
<td><img src="ac.webp"></td>
<td><img src="dbx2.jpeg"></td>
</tr>
<tr>
<td align="center"><a href="Assassin's Creed.jsp">Assassin's Creed</a></td>
<td align="center"><a href="DragonBall Xenoverse 2.jsp">DragonBall Xenoverse 2</a></td>
</tr>
</table>
</div>

<div class="right">
<table class="table4" cellpadding="10" align="center" border=2px>
<tr>
<td align="center" style="text-decoration:none; color:white;"><b>ADMIN</b></td>
</tr>
<% 
String admin = (String)session.getAttribute("admin");
if(admin==null)
{%>
<tr>
<td align="center"><a href="admin.jsp" target="_blank"><b>Log-In</b></a></td>
</tr>
<% 
}
else{
%>
<tr>
<td align="center"><a href="adminLogout.jsp"><b>Log Out</b></a></td>
</tr>
<%} %>
<tr>
<td align="center" style="text-decoration:none; color:white;"><b>EMPLOYEE</b></td>
</tr>
<% 
String emp = (String)session.getAttribute("emp");
if(emp==null)
{%>
<tr>
<td align="center"><a href="emp.jsp" target="_blank"><b>Log-In</b></a></td>
</tr>
<% 
}
else{
%>
<tr>
<td align="center"><a href="empLogout.jsp"><b>Log Out</b></a></td>
</tr>
<%} %>
<tr>
<td align="center" style="text-decoration:none; color:white;"><a href="feedback.jsp">Feedback</a></td>
</tr>
</table>
</div>
</body>
</html>
