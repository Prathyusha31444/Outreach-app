<%@ page import="java.sql.*,java.util.*"%>
<%
String aname=request.getParameter("aname");
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String age=request.getParameter("age");
String gender=request.getParameter("gender");
String vid=request.getParameter("vid");


try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/outreach","root","password-1");
	// System.out.println("Connection Established!!!");
	
		String vsql="insert into joinEvent values(?,?,?,?,?,?)";
		PreparedStatement pstmt=con.prepareStatement(vsql);
		pstmt.setString(1,aname);
		pstmt.setString(2,fname);
		pstmt.setString(3,lname);
		pstmt.setString(4,age);
		pstmt.setString(5,gender);
		pstmt.setString(5,vid);
		int n=pstmt.executeUpdate();
		
		if(n!=0)
		{
		out.println("<br><br><h3 align='center'>Joined Event Sccessfully!!!</h3>");
		// <a href="eventConditions.html"> Please add Do's and Dont's to Event </a>
		}
		else
		{
		out.println("<br><br><h3 align ='center'> Failed to Join!!!</h3>");	
		}
	con.close();
}
catch(Exception e)
{
	out.println(e.getMessage());
}

%>



		
		