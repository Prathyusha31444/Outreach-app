<%@ page import="java.sql.*,java.util.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
		String aid=request.getParameter("aid");
		String pwd=request.getParameter("password");
try{
	Class.forName("com.mysql.jdbc.Driver");
	// System.out.println("Driver Class Loaded!!!");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/outreach","root","password-1");
	System.out.println("Connection Established!!!");
	String vsql="select * from admin where aid=? and password=?";
      PreparedStatement pstmt=con.prepareStatement(vsql);
      pstmt.setString(1,aid);
      pstmt.setString(2,pwd);
      // out.println("Hi");
      ResultSet rs=pstmt.executeQuery();
      if(rs.next())
      {
    	  session.setAttribute("aid", aid);
    	  response.sendRedirect("adminHome.jsp");  
    	
      }
     else
		  {
			  out.println("<br><br><h3 align='center'>Login Invalid</h3>");
			  out.println("<a href='Admin.html'>Try to Login Again!!!</a>");	
		  }
      
			con.close();
	}
		catch(Exception e)
		{
			out.println("hello");	
		}	
%>