<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Project</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
}

body {
  margin: 2;
}
.header {
  background-color:#3b3a30;
  padding: 20px;
  text-align: center;
  color:#FFFFFF;
}

/* Style the top navigation bar */
.topnav {
  overflow: hidden;
  background-color:#C0C0C0;
  color:#3b3a30
}

/* Style the topnav links */
.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

/* Change color on hover */
.topnav a:hover {
  background-color: #ddd;
  color: black;
}
.body{
text-align: center;
}
</style>
</head>
<body>

<div class="header">
  <h1>Outreach App</h1>
  <h2>Volunteer</h2>
</div>

<div class="topnav">
  <a href="HomePage.html">Home</a>
<a href="logout.jsp">Log Out</a>
</div>


<body>
<%
Class.forName("com.mysql.jdbc.Driver");
//System.out.println("Driver Class Loaded!!!");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/outreach","root","password-1");
//System.out.println("Connection Established!!!");
 %>
 <br><br><br><br>
<table align=center border=3 width=500>

<tr align=center bgcolor="aqua">
<th>Name</th>
<th>Join</th>
<th>Invite</th>
<th>Donate<th>
</tr>

<%
ResultSet rs = con.createStatement().executeQuery("select aname from event ");

while(rs.next())
{
%>

<tr align=center>
<td><%=rs.getString(1)%></td>
<td><a href="joinEvent.jsp">Join</a></td>
<td><a href="">Invite</a></td>
<td><a href="donate.jsp">Donate</a></td>

</tr>
<%
}
%>
</table>
<br>


</body>
</html>