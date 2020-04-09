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
  <h2>Admin</h2>
</div>

<div class="topnav">
  <a href="HomePage.html">Home</a>
  <a href="adminHome.jsp">Admin Home</a>
<a href="logout.jsp">Log Out</a>
</div>



</body>
</html>