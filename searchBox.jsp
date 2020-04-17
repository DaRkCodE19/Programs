<%@page import="java.sql.*" %>
<html>
<head>

<title>Insert title here</title>
</head>
<body>
<%
String search = request.getParameter("search");


try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");

PreparedStatement ps = con.prepareStatement("select G_NAME from GAME where G_NAME='"+search+"' ");

ResultSet rs = ps.executeQuery();
if(rs.next())
{	
	response.sendRedirect(""+search+".jsp");
}
else
{
	out.println("Game not found");
%>
	<a href="aboutUs.jsp">Home</a>
<%
}
	
	
	

}
catch(Exception e)
{
out.println(e);
}

%>
</body>
</html>
