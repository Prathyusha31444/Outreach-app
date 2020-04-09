<%@ page import="java.sql.*,java.util.*"%>
<%
		String vid=request.getParameter("vid");
		String pwd=request.getParameter("password");
try{
	Class.forName("com.mysql.jdbc.Driver");
	// System.out.println("Driver Class Loaded!!!");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/outreach","root","password-1");
	// System.out.println("Connection Established!!!");
	String vsql="select * from volunteer where vid=? and password=?";
      PreparedStatement pstmt=con.prepareStatement(vsql);
      pstmt.setString(1,vid);
      pstmt.setString(2,pwd);
     
      ResultSet rs=pstmt.executeQuery();
      if(rs.next())
      {
    	  session.setAttribute("vid", vid);
    	  response.sendRedirect("volunteerHome.jsp");  
    	
      }
     else
		  {
			  out.println("<br><br><h3 align='center'>Login Invalid</h3>");
			  out.println("<a href='Volunteer.html'>Try to Login Again!!!</a>");	
		  }
      
			con.close();
	}
		catch(Exception e)
		{
			out.println(e.getMessage());	
		}	
%>